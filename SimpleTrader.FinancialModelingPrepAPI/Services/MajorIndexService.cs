using Newtonsoft.Json;
using SimpleTrader.Domain.Models;
using SimpleTrader.Domain.Services;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace SimpleTrader.FinancialModelingPrepAPI.Services
{
    public class MajorIndexService : IMajorIndexService
    {
        private const string ApiKey = "900c737b83fe09728945a6c52c1c9197";
        private const string BaseUri = "majors-indexes/";
        private const string DowJonesEndPoint = ".DJI";
        private const string NasdaqEndPoint = ".IXIC";
        private const string SandPEndPoint = ".INX";
        public async Task<MajorIndex> GetMajorIndex(MajorIndexType indexType)
        {
            using (FinancialModelingPrepHttpClient client = new FinancialModelingPrepHttpClient())
            {
                string uri = $"{BaseUri}{GetEndPoint(indexType)}?apikey={ApiKey}";

                MajorIndex majorIndex = await client.GetAsync<MajorIndex>(uri);
                majorIndex.Type = indexType;
                return majorIndex;
            }
        }

        private string GetEndPoint(MajorIndexType indexType)
        {
            switch (indexType)
            {
                case MajorIndexType.DowJones: return DowJonesEndPoint;
                case MajorIndexType.Nasdaq: return NasdaqEndPoint;
                case MajorIndexType.SP500: return SandPEndPoint;
                default: throw new KeyNotFoundException();
            }
        }
    }
}