#### Intro
- Acts as a caching layer for RDS
- Supports Redis & MemCached
- Usage involves application code changes
- Redis Sorted Sets guarantee both uniqueness and element ordering ( Gaming leaderboard usecase)


#### DB Cache
- Typical caching solution before DB
- Must have invalidation strategy

#### User session store
- Write session data to ElasticCache
- Avoids sticky sessions
- Makes application stateless

### Cache Security
- supports IAM Authentication for Redis
- IAM policies on ElastiCache are only used for AWS API-level security
- Memcached -  Supports SASL-based authentication (advanced)
- Redis AUTH
  - Can set a “password/token” when you create a Redis cluster
  - This is an extra level of security for your cache (on top of security groups)
  - Support SSL in flight encryption
- Memcached
  - Supports SASL based authentication (advanced)

#### Patterns
- Lazy Loading
- Write Through
- Session Store

#### Important RDS Ports
- PostgreSQL: 5432
- MySQL: 3306
- Oracle RDS: 1521
- MSSQL Server: 1433
- MariaDB: 3306 (same as MySQL)
- Aurora: 5432 (if PostgreSQL compatible) or 3306 (if MySQL compatible)
