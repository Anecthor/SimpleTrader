using System;
using System.Collections.Generic;
using System.Text;

namespace SimpleTrader.FinancialModelingPrepAPI
{
    public class FinancialModelingPrepHttpClientFactory
    {

        public FinancialModelingPrepHttpClient CreateHttpClient()
        {
            return new FinancialModelingPrepHttpClient();
        }
    }
}
