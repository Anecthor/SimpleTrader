using SimpleTrader.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SimpleTrader.Domain.Services;
using SimpleTrader.WPF.ViewModels;

namespace SimpleTrader.WPF.Commands
{
    public class LoadMajorIndexesCommand : AsyncCommandBase
    {
        private readonly MajorIndexListingViewModel _viewModel;
        private readonly IMajorIndexService _majorIndexService;


        public LoadMajorIndexesCommand(MajorIndexListingViewModel viewModel, IMajorIndexService majorIndexService)
        {
            _viewModel = viewModel;
            _majorIndexService = majorIndexService;
        }
        public override  async Task ExecuteAsync(object parameter)
        {
             await Task.WhenAll(LoadDowJones(), LoadNasDaq(), LoadSp500());

             _viewModel.IsLoading = false;
        }

        private async Task LoadDowJones()
        {
            _viewModel.DowJones = await _majorIndexService.GetMajorIndex(MajorIndexType.DowJones);
        }

        private async Task LoadNasDaq()
        {
            _viewModel.Nasdaq = await _majorIndexService.GetMajorIndex(MajorIndexType.Nasdaq);
        }

        private async Task LoadSp500()
        {
            _viewModel.SP500 = await _majorIndexService.GetMajorIndex(MajorIndexType.SP500);
        }
    }
}
