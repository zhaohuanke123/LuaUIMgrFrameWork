using PlasticGui;
using UnityEditor;
using UnityEngine;

namespace Editor.ABEditor
{
    /// <summary>
    /// 导出AB包，编辑器扩展
    /// </summary>
    public static class ABExpotor
    {
        public static string ABOutPath = Application.dataPath + "/ABPackage";

        [MenuItem("Tools/ABExpotor/Android")]
        public static void ExportAndroid()
        {
            Build(BuildTarget.Android);
        }

        [MenuItem("Tools/ABExpotor/Windows")]
        public static void ExportWindows()
        {
            Build(BuildTarget.StandaloneWindows);
        }

        [MenuItem("Tools/ABExpotor/IOS")]
        public static void ExportIOS()
        {
            Build(BuildTarget.iOS);
        }

        public static void Build(BuildTarget target)
        {
            // 打包AB包
            BuildPipeline.BuildAssetBundles(ABOutPath, BuildAssetBundleOptions.None, target);
            // 刷新
            AssetDatabase.Refresh();
        }
    }
}