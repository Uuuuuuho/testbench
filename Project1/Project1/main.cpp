#include <iostream>
#include <math.h>
using namespace std;

#define P_CONTROL 1
#define I_CONTROL 2
#define D_CONTROL 3
#define PID_CONTROL 4

#define SIMULATOR PID_CONTROL

double vol2speed(double vol);
double speed2vol(double speed);

#if SIMULATOR == P_CONTROL //P control
int main() {
	float TargetSpeed, D_Gain, N, SamplingTime, Time;

	double Kp = 0.05, Ki = 3, Kd = 3, error = 0, current = 0;

	SamplingTime = 0.01;
	Time = 0;
	N = 0.5;
	TargetSpeed = 10; //target speed



	for (int i = 1; i <= 100; i++)

	{
		cout << current << endl;

		error = TargetSpeed - current;
		current = current + Kp * error;
		if (i % 50 == 0)
			TargetSpeed = 5;


	}
}
#endif

#if SIMULATOR == D_CONTROL   //D control
void main()

{

	float bb, bb1, bb2, cmd, D_Gain, N, SamplingTime, Time, TimeLimit;

	bb = 0; bb1 = 0; bb2 = 0;

	SamplingTime = 0.01;

	Time = 0;

	D_Gain = 0.1;

	N = 0.5;

	cmd = 10;



	for (int i = 1; i <= 200; i++)

	{

		bb = (cmd * D_Gain - bb2) * N;

		bb2 = bb2 + (bb + bb1) * SamplingTime / 2;

		bb1 = bb;

		Time = i * SamplingTime;

		cout << bb << endl;

	}

}

#endif

#if SIMULATOR == I_CONTROL   //I control
void main()

{

	double ee, ee1, cmd, I_Gain, SamplingTime, Time;

	ee = 0; ee1 = 0;

	SamplingTime = 0.01; Time = 0;

	I_Gain = 5;

	cmd = 1;



	for (int i = 1; i <= 100; i++)

	{

		ee = ee + ee1 * SamplingTime;

		ee1 = cmd * I_Gain;

		Time = i * SamplingTime;

		cout << ee << endl;

	}

}

#endif

#if SIMULATOR == PID_CONTROL
void main()

{
	double TargetSpeed = 0.3,
		SamplingTime = 0.1,
		error = 0,
		current = 0,
		pre_error = 0,
		max = 0.05,   //output maximum
		min = -0.05,   //output minimum
		Pout = 0,
		Iout = 0,
		integral = 0,
		Dout = 0,
		derivative = 0,
		output = 0,
		next_speed = 0,
		next_voltage = -1;

	//should be configured
	double Kp = 1,
		Ki = 0.5,
		Kd = 1;

	cout << current << "\t" << next_voltage << endl;

	for (int i = 1; i <= 100; i++)

	{
		if (current > 0.05) {
			// Calculate error
			error = TargetSpeed - current;

			// Proportional term
			Pout = Kp * error;

			// Integral term
			integral += error * SamplingTime;
			Iout = Ki * integral;

			// Derivative term
			derivative = (error - pre_error) / SamplingTime;
			Dout = Kd * derivative;

			// Calculate total output
			output = Pout + Iout + Dout;

			// Restrict to max/min
			if (output > max)
				output = max;
			else if (output < min)
				output = min;

			// Save error to previous error
			pre_error = error;

			next_speed = output + current;
			next_voltage = speed2vol(next_speed);

			if (next_voltage > 1) {
				next_voltage = 1;
			}

			else if (next_voltage < -1) {
				next_voltage = -1;
			}

			current = vol2speed(next_voltage);

			//encoder limit
			if (current > 1.3) {
				current = 1.3;
			}
		}

		else {	//when initial condition
			next_voltage = -0.7;
			current = vol2speed(-0.7);
		}

		cout << current << "\t" << next_voltage << endl;

	}

}
#endif

double vol2speed(double vol)
{
	double result = 0.306 * vol + 0.494;
	return result;
}

double speed2vol(double speed)
{
	double result = (speed - 0.494) / 0.306;
	return result;
}
