#include <iostream>

using namespace std;

class Point {
public:
	Point(int x, int y) { this->x = x; this->y = y; }

	int get_x() { return x; }
	int get_y() { return y; }
	void set_x(int x) { this->x = x; }
	void set_y(int y) { this->y = y; }

private:
	int x;
	int y;
};

int main()
{
	Point p(4, 5);

	cout << "p.x: " << p.get_x() << endl;
	cout << "p.y: " << p.get_y() << endl;

	p.set_x(10);
	p.set_y(12);

	cout << "p.x: " << p.get_x() << endl;
	cout << "p.y: " << p.get_y() << endl;

	return 0;
}

