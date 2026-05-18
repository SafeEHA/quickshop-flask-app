#!/bin/bash
set -e

touch main.tf
touch variables.tf
touch outputs.tf
touch iam.tf

echo "Scaffold complete"


{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:UpdateService",
        "iam:PassRole",
        "ecr:DescribeImages"
      ],
      "Resource": "*"
    }
  ]
}
