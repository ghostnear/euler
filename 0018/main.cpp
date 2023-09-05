#include <vector>
#include <fstream>
#include <iostream>

std::vector<std::vector<int>> data;

int main(int argc, char* argv[])
{
    std::ifstream fin("./0018/input.txt");
    if(!fin.good())
    {
        printf("Couldn't open file.");
        return EXIT_FAILURE;
    }

    int index = 0, temp;

    // Read file.
    while(!fin.eof())
    {
        index++;

        // Read row.
        std::vector<int> row;
        for(int i = 0; i < index; i++)
        {
            fin >> temp;
            row.push_back(temp);
        }
        data.push_back(row);
    }

    // Go backwards.
    while(index--)
        for(int i = 0; i < index; i++)
            data[index - 1][i] += std::max(data[index][i], data[index][i + 1]);

    printf("%d\n", data[0][0]);

    return EXIT_SUCCESS;
}