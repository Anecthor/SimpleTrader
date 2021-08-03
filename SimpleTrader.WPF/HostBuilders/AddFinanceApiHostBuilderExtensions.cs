using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using SimpleTrader.FinancialModelingPrepAPI;

namespace SimpleTrader.WPF.HostBuilders
{
    public static class AddFinanceApiHostBuilderExtensions
    {
        public static IHostBuilder AddFinanceApi(this IHostBuilder host)
        {
            host.ConfigureServices((context, services) =>
            {
                string apiKey = context.Configuration.GetValue<string>("900c737b83fe09728945a6c52c1c9197");
                services.AddSingleton(new FinancialModelingPrepHttpClientFactory());
            });

            return host;
        }
    }
}
