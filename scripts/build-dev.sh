#!/bin/bash

# Dev 环境构建脚本
# 用于自动构建和测试 gorder-v2 项目

set -e  # 遇到错误立即退出

echo "================================"
echo "🚀 开始 Dev 环境构建"
echo "================================"
echo ""

# 检查 Go 环境
# echo "📋 检查 Go 环境..."
# go version
# echo ""

# # 进入项目根目录
# SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
# cd "$PROJECT_ROOT"

# echo "📂 项目路径: $PROJECT_ROOT"
# echo ""

# # 清理旧的构建产物
# echo "🧹 清理旧的构建产物..."
# rm -rf ./bin
# mkdir -p ./bin
# echo "✅ 清理完成"
# echo ""

# # 构建各个微服务
# echo "🔨 开始构建微服务..."
# echo ""

# # 构建 Order 服务
# echo "📦 构建 Order 服务..."
# cd internal/order
# go mod download
# go build -o ../../bin/order-service ./main.go
# echo "✅ Order 服务构建完成"
# echo ""

# # 构建其他服务（如果有 main.go）
# cd "$PROJECT_ROOT"

# # 检查 Kitchen 服务
# if [ -f "internal/kitchen/main.go" ]; then
#     echo "📦 构建 Kitchen 服务..."
#     cd internal/kitchen
#     go mod download
#     go build -o ../../bin/kitchen-service ./main.go
#     echo "✅ Kitchen 服务构建完成"
#     echo ""
#     cd "$PROJECT_ROOT"
# fi

# # 检查 Payment 服务
# if [ -f "internal/payment/main.go" ]; then
#     echo "📦 构建 Payment 服务..."
#     cd internal/payment
#     go mod download
#     go build -o ../../bin/payment-service ./main.go
#     echo "✅ Payment 服务构建完成"
#     echo ""
#     cd "$PROJECT_ROOT"
# fi

# # 检查 Stock 服务
# if [ -f "internal/stock/main.go" ]; then
#     echo "📦 构建 Stock 服务..."
#     cd internal/stock
#     go mod download
#     go build -o ../../bin/stock-service ./main.go
#     echo "✅ Stock 服务构建完成"
#     echo ""
#     cd "$PROJECT_ROOT"
# fi

# # 显示构建产物
# echo "📊 构建产物："
# ls -lh ./bin/
# echo ""

# # 运行测试（可选）
# echo "🧪 运行测试..."
# cd internal/order
# go test -v ./... || echo "⚠️  Order 服务测试失败或无测试"
# echo ""

# cd "$PROJECT_ROOT"

# echo "================================"
# echo "✅ Dev 环境构建完成！"
# echo "================================"
# echo ""
# echo "💡 提示："
# echo "  - 构建产物位于: ./bin/"
# echo "  - 运行 Order 服务: ./bin/order-service"
# echo ""

