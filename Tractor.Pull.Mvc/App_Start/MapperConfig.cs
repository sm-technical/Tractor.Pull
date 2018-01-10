using AutoMapper;
using AutoMapper.Configuration;
using Tractor.Pull.Mvc.Models;

namespace Tractor.Pull.Mvc
{
    public static class MapperConfig
    {
        public static void InitializeMappings()
        {
            var config = new MapperConfigurationExpression();

            config.CreateMap<Domain.Tractor, TractorViewModel>();

            Mapper.Initialize(config);
        }
    }
}