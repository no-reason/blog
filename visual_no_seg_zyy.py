import numpy as np
import open3d as o3d
from pathlib import Path

def read_pts(path):
    # 稳健读取：取每行前三个数为 xyz
    data = np.loadtxt(path, dtype=np.float32)
    data = np.atleast_2d(data)
    xyz = data[:, :3]
    return xyz

def hex2rgb01(h):
    h = h.lstrip('#')
    return [int(h[i:i+2], 16)/255.0 for i in (0, 2, 4)]

# —— 按你的目录改这一行 ——
pts_path = "/data/personal_data/yzf/diffusion-point-cloud/results/AE_Ours_all_1764145959/ref_pts/ref_00000.pts"
# ————————————————

# 读取点云数据
pts = read_pts(pts_path)

# 单一配色设置（可修改HEX值更换颜色）
single_color_hex = "#1362E0"  # 蓝色示例，可替换为任意HEX颜色
single_color = np.array(hex2rgb01(single_color_hex), dtype=float)
# 为所有点分配相同颜色
colors = np.tile(single_color, (len(pts), 1))

# 创建点云并可视化
pcd = o3d.geometry.PointCloud()
pcd.points = o3d.utility.Vector3dVector(pts.astype(float))
pcd.colors = o3d.utility.Vector3dVector(colors.astype(float))

vis = o3d.visualization.Visualizer()
vis.create_window("Shapenet Part Seg (Single Color)", 1280, 720)
vis.add_geometry(pcd)
opt = vis.get_render_option()
opt.point_size = 3.0
opt.background_color = [1, 1, 1]  # 白色背景
vis.run()
vis.destroy_window()