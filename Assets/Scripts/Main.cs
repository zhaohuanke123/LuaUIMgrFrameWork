using System;
using UnityEngine;

namespace DefaultNamespace
{
    public class Main : MonoBehaviour
    {
        private void Awake()
        {
            // 初始化Lua解析器
            LuaManager.Instance.Init();
            // 加载Lua脚本
            LuaManager.Instance.DoLuaFile("Main");
        }

        private void OnDestroy()
        {
            // 销毁Lua解析器
            LuaManager.Instance.Dispose();
        }
    }
}