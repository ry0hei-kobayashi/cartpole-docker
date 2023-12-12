# -*- coding: utf -8 -*-
import gym
#from gym.envs.classic_control import rendering

env = gym.make('CartPole-v1')
env.reset()

#for _ in range(100):
while True:
    env.render()
    action = env.action_space.sample()
    obs,reward,done,info = env.step(action)
    if done:
        env.reset()

env.close()

#######install########
#pip install gym==0.21.0 rendering gymgrid2 pyglet==1.5.27 chainer==4.0.0 chainerrl==0.3.0

#only ubuntu
#apt install python3-tk
#nupy 1.24.1 -> /usr/local/lib/python3.8/dist-packages/gym/utils/passive_env_checkerのnp.bool8をnp.bool_に置換

