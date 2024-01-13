using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// 普通单例模式
public abstract class Singleton<T> where T : new()
{
    // 饿汉式, 线程安全
    private static Lazy<T> _instance = new Lazy<T>(() => new T());
    public static T instance => _instance.Value;
}

// Unity单例
public class UnitySingleton<T> : MonoBehaviour
where T : Component
{
    private static T _instance = null;
    public static T Instance
    {
        get
        {
            if (_instance == null)
            {
                _instance = FindObjectOfType(typeof(T)) as T;
                if (_instance == null)
                {
                    GameObject obj = new GameObject();
                    _instance = (T)obj.AddComponent(typeof(T));
                    obj.hideFlags = HideFlags.DontSave;
                    // obj.hideFlags = HideFlags.HideAndDontSave;
                    obj.name = typeof(T).Name;
                }
            }
            return _instance;
        }
    }

    public virtual void Awake()
    {
        DontDestroyOnLoad(this.gameObject);
        if (_instance == null)
        {
            _instance = this as T;
        }
        else
        {
            GameObject.Destroy(this.gameObject);
        }
    }
}
