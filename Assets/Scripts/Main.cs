using System;
using UnityEngine;

namespace DefaultNamespace
{
    public class Main : MonoBehaviour
    {
        private void Awake()
        {
            this.gameObject.AddComponent<ABMgr>();
            
            // 初始化Lua解析器
            LuaMgr.Instance.Init();
            // 加载Lua脚本
            LuaMgr.Instance.DoLuaFile("Main");
        }

        private void OnDestroy()
        {
            // 销毁Lua解析器
            LuaMgr.Instance.Dispose();
        }
    }
}