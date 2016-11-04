deployment.svg: deployment.dot
	dot -Tsvg deployment.dot | sed -e "1,3d" > _includes/deployment.svg
