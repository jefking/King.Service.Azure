# Task scheduling for Azure
[![.NET](https://github.com/jefking/King.Service.Azure/actions/workflows/dotnet.yml/badge.svg)](https://github.com/jefking/King.Service.Azure/actions/workflows/dotnet.yml)
1. Based on [King.Service](https://github.com/jefking/King.Service)
2. Tasks to initialize your Azure Storage resources
 + Create: Queues
 + Create: Tables
 + Create: Blob Containers
4. Dequeue from Azure Storage Queues
 + Batches of messages
 + Shards for high throughput
 + Variable timing for cost savings
5. Extension for working with: [Service Bus](https://github.com/jefking/King.Service.ServiceBus)

# Ready, Set, Go!
## [NuGet](https://www.nuget.org/packages/King.Service.Azure)
```
PM> Install-Package King.Service.Azure
```

## [Demo Container](https://hub.docker.com/r/jefking/king.service.demo)
Create Azure Storage Account; Blob + Queue

### Pull
```
docker pull jefking/king.service.demo
```

### Run
```
docker run -it jefking/king.service.demo <YOUR STORAGE ACCOUNT CONNECTION>
```

## [Docs](https://github.com/jefking/King.Service/wiki)
View the [wiki](https://github.com/jefking/King.Service.Azure/wiki) to learn how to use this.