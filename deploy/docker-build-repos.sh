GREEN=$'\e[0;32m'
RED=$'\e[0;31m'
NC=$'\e[0m'

echo "${GREEN}Building docker image of repos...${NC}"

echo "${GREEN}Building micro-ratings...${NC}"
docker build ./micro-ratings -t micro-ratings 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-ratings image is available !\n${NC}"
else
    echo "${RED}micro-ratings image is not available, build failed !\n${NC}"
fi

echo "${GREEN}Building micro-orders...${NC}"
docker build ./micro-orders -t micro-orders 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-orders image is available !\n${NC}"
else
    echo "${RED}micro-orders image is not available, build failed !\n${NC}"
fi

echo "${GREEN}Building micro-users...${NC}"
docker build ./micro-users -t micro-users 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-users image is available !\n${NC}"
else
    echo "${RED}micro-users image is not available, build failed !\n${NC}"
fi
echo "${GREEN}Building micro-products...${NC}"
docker build ./micro-products -t micro-products 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-products image is available !\n${NC}"
else
    echo "${RED}micro-products image is not available, build failed !\n${NC}"
fi

echo "${GREEN}Building micro-product-lists${NC}"
docker build ./micro-product-lists -t micro-product-lists 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-product-lists image is available !\n${NC}"
else
    echo "${RED}micro-product-lists image is not available, build failed !\n${NC}"
fi

echo "${GREEN}Building micro-comments${NC}"
docker build ./micro-comments -t micro-comments 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}micro-comments image is available !\n${NC}"
else
    echo "${RED}micro-comments image is not available, build failed !\n${NC}"
fi

echo "${GREEN}Docker images builded !${NC}"

