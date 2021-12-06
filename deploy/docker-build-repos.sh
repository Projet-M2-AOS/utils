GREEN=$'\e[0;32m'
RED=$'\e[0;31m'
NC=$'\e[0m'

echo "${GREEN}Building docker image of repos..."

echo "${GREEN}Building micro-rating..."
docker build ./micro-rating -t micro-rating 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-rating image is available !\n"
else
    echo "${RED}micro-rating image is not available, build failed !\n"
fi

echo "${GREEN}Building micro-order..."
docker build ./micro-order -t micro-order 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-order image is available !\n"
else
    echo "${RED}micro-order image is not available, build failed !\n"
fi

echo "${GREEN}Building micro-user..."
docker build ./micro-user -t micro-user 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-user image is available !\n"
else
    echo "${RED}micro-user image is not available, build failed !\n"
fi
echo "${GREEN}Building micro-products..."
docker build ./micro-products -t micro-products 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-products image is available !\n"
else
    echo "${RED}micro-products image is not available, build failed !\n"
fi

echo "${GREEN}Building micro-product-list"
docker build ./micro-product-lists -t micro-product-list 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-product-list image is available !\n"
else
    echo "${RED}micro-product-list image is not available, build failed !\n"
fi

echo "${GREEN}Building micro-comments"
docker build ./micro-comments -t micro-comments 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-comments image is available !\n"
else
    echo "${RED}micro-comments image is not available, build failed !\n"
fi

echo "${GREEN}Docker images builded !"

