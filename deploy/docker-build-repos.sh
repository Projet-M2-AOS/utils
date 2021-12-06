echo "Building docker image of repos..."

echo "Building micro-rating..."
docker build ./micro-rating -t micro-rating 2>&1> /dev/null
echo "micro-rating image is available !\n"

echo "Building micro-order..."
docker build ./micro-order -t micro-order 2>&1> /dev/null
echo "micro-order image is available !\n"

echo "Building micro-user..."
docker build ./micro-user -t micro-user 2>&1> /dev/null
echo "micro-user image is available !\n"

echo "Building micro-products..."
docker build ./micro-products -t micro-products 2>&1> /dev/null
echo "micro-products image is available !\n"

echo "Building micro-prouct-list"
docker build ./micro-product-lists -t micro-product-list 2>&1> /dev/null
echo "micro-product-list image is available !\n"

echo "Building micro-comments"
docker build ./micro-comments -t micro-comments 2>&1> /dev/null
echo "micro-comments image is available !\n"

echo "Docker images builded !"

