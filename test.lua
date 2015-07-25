require 'torch'
require 'nngraph'

local net = torch.load('xor/network.t7')

print('0 XOR 0 = ' .. net:forward(torch.Tensor({ 0, 0 }))[1])
print('0 XOR 1 = ' .. net:forward(torch.Tensor({ 0, 1 }))[1])
print('1 XOR 0 = ' .. net:forward(torch.Tensor({ 1, 0 }))[1])
print('1 XOR 1 = ' .. net:forward(torch.Tensor({ 1, 1 }))[1])
