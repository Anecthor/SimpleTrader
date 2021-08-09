using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;
using SimpleTrader.Domain.Services;
using SimpleTrader.Domain.Services.TransactionServices;
using SimpleTrader.WPF.Commands;
using SimpleTrader.WPF.State.Accounts;
using SimpleTrader.WPF.State.Assets;

namespace SimpleTrader.WPF.ViewModels
{
    public class SellViewModel : ViewModelBase, ISearchSymbolViewModel
    {

        public SellViewModel(AssetStore assetStore, IStockPriceService stockPriceService, ISellStockService sellStockService, IAccountStore accountStore)
        {
            AssetListingViewModel = new AssetListingViewModel(assetStore);
            SearchSymbolCommand = new SearchSymbolCommand(this, stockPriceService);
            SellStockCommand = new SellStockCommand(this, sellStockService, accountStore);
            ErrorMessageViewModel = new MessageViewModel();
            StatusMessageViewModel = new MessageViewModel();
        }
        public AssetListingViewModel AssetListingViewModel { get; }

        private AssetViewModel _selectedAsset;

        public AssetViewModel SelectedAsset
        {
            get { return _selectedAsset; }
            set
            {
                _selectedAsset = value;
                OnPropertyChanged(nameof(SelectedAsset));
                OnPropertyChanged(nameof(Symbol));
                OnPropertyChanged(nameof(CanSearchSymbol));
            }
        }

        public ICommand SearchSymbolCommand { get; }
        public ICommand SellStockCommand { get; }

        
        public string Symbol => SelectedAsset?.Symbol;

        public bool CanSearchSymbol => string.IsNullOrEmpty(Symbol) == false;

        private string _searchResultSymbol = string.Empty;
        public string SearchResultSymbol
        {
            get
            {
                return _searchResultSymbol;
            }
            set
            {
                _searchResultSymbol = value;
                OnPropertyChanged(nameof(SearchResultSymbol));
            }
        }

        private double _stockPrice;
        public double StockPrice
        {
            get
            {
                return _stockPrice;
            }
            set
            {
                _stockPrice = value;
                OnPropertyChanged(nameof(StockPrice));
                OnPropertyChanged(nameof(TotalPrice));
                
            }
        }

        private int _sharesToSell;

        public int SharesToSell
        {
            get { return _sharesToSell; }
            set
            {
                _sharesToSell = value;
                OnPropertyChanged(nameof(SharesToSell));
                OnPropertyChanged(nameof(TotalPrice));
            }
        }

        public double TotalPrice => SharesToSell * StockPrice;

        public MessageViewModel ErrorMessageViewModel { get; }

        public string ErrorMessage
        {
            set => ErrorMessageViewModel.Message = value;
        }

        public MessageViewModel StatusMessageViewModel { get; }

        public string StatusMessage
        {
            set => StatusMessageViewModel.Message = value;
        }

        public override void Dispose()
        {
            AssetListingViewModel.Dispose();
        }
    }
}
