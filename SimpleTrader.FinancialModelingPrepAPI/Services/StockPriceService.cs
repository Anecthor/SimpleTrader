using Newtonsoft.Json;
using SimpleTrader.Domain.Exceptions;
using SimpleTrader.Domain.Services;
using SimpleTrader.FinancialModelingPrepAPI.Results;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace SimpleTrader.FinancialModelingPrepAPI.Services
{
    public class StockPriceService : IStockPriceService
    {
        private const string BaseUri = "stock/real-time-price/";
        private const string ApiKey = "900c737b83fe09728945a6c52c1c9197";

        private readonly FinancialModelingPrepHttpClient _client;

        public StockPriceService(FinancialModelingPrepHttpClient client)
        {
            _client = client;
        }

        public async Task<double> GetPrice(string symbol)
        {

            string uri = $"{BaseUri}{symbol}?apikey={ApiKey}";

            StockPriceResult result = await _client.GetAsync<StockPriceResult>(uri);

            if (result == null || result.Price == 0)
            {
                throw new InvalidSymbolException(symbol);
            }

            return result.Price;

        }
    }
}
