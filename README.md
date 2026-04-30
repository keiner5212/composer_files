# Composer Files

Collection of Docker Compose configurations for local development.

## Structure

```
├── aws-cognito/       # AWS Cognito emulation
├── aws-dynamodb/      # DynamoDB local
├── aws-lambda/        # Lambda functions local dev
├── aws-s3/           # MinIO S3-compatible storage
├── environment-containers/  # ready-to-run envs
├── firebase-emulator/     # Firebase services
├── mongodb/          # MongoDB
├── mysql/            # MySQL
├── postgres/         # PostgreSQL
└── redis/            # Redis
```

## Usage

Each folder is independent. Navigate and run:

```bash
cd <folder>
docker compose up -d
```

Check individual folder README for specific instructions.