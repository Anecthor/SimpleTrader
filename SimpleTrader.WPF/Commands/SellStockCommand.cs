using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Threading.Tasks;
using SimpleTrader.Domain.Exceptions;
using SimpleTrader.Domain.Models;
using SimpleTrader.Domain.Services.TransactionServices;
using SimpleTrader.WPF.State.Accounts;
using SimpleTrader.WPF.ViewModels;

namespace SimpleTrader.WPF.Commands
{
    public class SellStockCommand : AsyncCommandBase
    {
        private readonly SellViewModel _viewModel;
        private readonly ISellStockService _sellStockService;
        private readonly IAccountStore _accountStore;
        private bool _canSellShares;

        public SellStockCommand(SellViewModel viewModel, ISellStockService sellStockService, IAccountStore accountStore)
        {
            _viewModel = viewModel;
            _sellStockService = sellStockService;
            _accountStore = accountStore;
            _viewModel.PropertyChanged += ViewModelOnPropertyChanged;
        }

        private void ViewModelOnPropertyChanged(object? sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(_viewModel.SharesToSell))
            {
                _canSellShares = _viewModel.SharesToSell > 0;
                OnCanExecuteChanged();
            }
        }

        public override bool CanExecute(object parameter)
        {
            return _canSellShares && base.CanExecute(parameter);
        }

        public override async Task ExecuteAsync(object parameter)
        {
            _viewModel.StatusMessage = string.Empty;
            _viewModel.ErrorMessage = string.Empty;

            try
            {
                string symbol = _viewModel.Symbol;
                int shares = _viewModel.SharesToSell;
                Account account = await _sellStockService.SellStock(_accountStore.CurrentAccount, symbol, shares);

                _accountStore.CurrentAccount = account;

                _viewModel.SearchResultSymbol = string.Empty;

                _viewModel.StatusMessage = $"Successfully sold {shares} shares of {symbol}.";
            }
            catch (InsufficientSharesException ex)
            {
                _viewModel.ErrorMessage = $"Account has insufficient shares. You only have {ex.AccountShares} shares";
            }
            catch (InvalidSymbolException)
            {
                _viewModel.ErrorMessage = "Symbol does not exist.";
            }
            catch (Exception)
            {
                _viewModel.ErrorMessage = "Transaction failed.";
            }
        }
    }
}
