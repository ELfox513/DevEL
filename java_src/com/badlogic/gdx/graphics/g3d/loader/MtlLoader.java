package com.badlogic.gdx.graphics.g3d.loader;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g3d.model.data.ModelMaterial;
import com.badlogic.gdx.graphics.g3d.model.data.ModelTexture;
import com.badlogic.gdx.utils.Array;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
class MtlLoader {
    public Array<ModelMaterial> materials = new Array<>();

    /* loaded from: classes.dex */
    public static class ObjMaterial {

        /* renamed from: a */
        public String f4463a = "default";

        /* renamed from: b */
        public Color f4464b;

        /* renamed from: c */
        public Color f4465c;

        /* renamed from: d */
        public Color f4466d;

        /* renamed from: e */
        public float f4467e;

        /* renamed from: f */
        public float f4468f;

        /* renamed from: g */
        public String f4469g;

        /* renamed from: h */
        public String f4470h;

        /* renamed from: i */
        public String f4471i;

        /* renamed from: j */
        public String f4472j;

        /* renamed from: k */
        public String f4473k;

        public void reset() {
            this.f4464b = null;
            Color color = Color.WHITE;
            this.f4465c = color;
            this.f4466d = color;
            this.f4467e = 1.0f;
            this.f4468f = 0.0f;
            this.f4469g = null;
            this.f4470h = null;
            this.f4471i = null;
            this.f4472j = null;
            this.f4473k = null;
        }

        /* renamed from: a */
        public final void m24129a(ModelMaterial modelMaterial, String str, int i) {
            if (str != null) {
                ModelTexture modelTexture = new ModelTexture();
                modelTexture.usage = i;
                modelTexture.fileName = str;
                if (modelMaterial.textures == null) {
                    modelMaterial.textures = new Array<>(1);
                }
                modelMaterial.textures.add(modelTexture);
            }
        }

        public ModelMaterial build() {
            Color color;
            ModelMaterial modelMaterial = new ModelMaterial();
            modelMaterial.f4493id = this.f4463a;
            if (this.f4464b == null) {
                color = null;
            } else {
                color = new Color(this.f4464b);
            }
            modelMaterial.ambient = color;
            modelMaterial.diffuse = new Color(this.f4465c);
            modelMaterial.specular = new Color(this.f4466d);
            modelMaterial.opacity = this.f4467e;
            modelMaterial.shininess = this.f4468f;
            m24129a(modelMaterial, this.f4469g, 9);
            m24129a(modelMaterial, this.f4470h, 4);
            m24129a(modelMaterial, this.f4471i, 2);
            m24129a(modelMaterial, this.f4473k, 5);
            m24129a(modelMaterial, this.f4472j, 6);
            return modelMaterial;
        }

        public ObjMaterial() {
            reset();
        }
    }

    /* renamed from: a */
    public final Color m24130a(String[] strArr) {
        float f;
        float parseFloat = Float.parseFloat(strArr[1]);
        float parseFloat2 = Float.parseFloat(strArr[2]);
        float parseFloat3 = Float.parseFloat(strArr[3]);
        if (strArr.length > 4) {
            f = Float.parseFloat(strArr[4]);
        } else {
            f = 1.0f;
        }
        return new Color(parseFloat, parseFloat2, parseFloat3, f);
    }

    public ModelMaterial getMaterial(String str) {
        Array.ArrayIterator<ModelMaterial> it = this.materials.iterator();
        while (it.hasNext()) {
            ModelMaterial next = it.next();
            if (next.f4493id.equals(str)) {
                return next;
            }
        }
        ModelMaterial modelMaterial = new ModelMaterial();
        modelMaterial.f4493id = str;
        modelMaterial.diffuse = new Color(Color.WHITE);
        this.materials.add(modelMaterial);
        return modelMaterial;
    }

    public void load(FileHandle fileHandle) {
        ObjMaterial objMaterial = new ObjMaterial();
        if (fileHandle != null && fileHandle.exists()) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileHandle.read()), 4096);
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        if (readLine.length() > 0 && readLine.charAt(0) == '\t') {
                            readLine = readLine.substring(1).trim();
                        }
                        String[] split = readLine.split("\\s+");
                        if (split[0].length() != 0 && split[0].charAt(0) != '#') {
                            String lowerCase = split[0].toLowerCase();
                            if (lowerCase.equals("newmtl")) {
                                this.materials.add(objMaterial.build());
                                if (split.length > 1) {
                                    String str = split[1];
                                    objMaterial.f4463a = str;
                                    objMaterial.f4463a = str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '_');
                                } else {
                                    objMaterial.f4463a = "default";
                                }
                                objMaterial.reset();
                            } else if (lowerCase.equals("ka")) {
                                objMaterial.f4464b = m24130a(split);
                            } else if (lowerCase.equals("kd")) {
                                objMaterial.f4465c = m24130a(split);
                            } else if (lowerCase.equals("ks")) {
                                objMaterial.f4466d = m24130a(split);
                            } else {
                                if (!lowerCase.equals("tr") && !lowerCase.equals("d")) {
                                    if (lowerCase.equals("ns")) {
                                        objMaterial.f4468f = Float.parseFloat(split[1]);
                                    } else if (lowerCase.equals("map_d")) {
                                        objMaterial.f4469g = fileHandle.parent().child(split[1]).path();
                                    } else if (lowerCase.equals("map_ka")) {
                                        objMaterial.f4470h = fileHandle.parent().child(split[1]).path();
                                    } else if (lowerCase.equals("map_kd")) {
                                        objMaterial.f4471i = fileHandle.parent().child(split[1]).path();
                                    } else if (lowerCase.equals("map_ks")) {
                                        objMaterial.f4473k = fileHandle.parent().child(split[1]).path();
                                    } else if (lowerCase.equals("map_ns")) {
                                        objMaterial.f4472j = fileHandle.parent().child(split[1]).path();
                                    }
                                }
                                objMaterial.f4467e = Float.parseFloat(split[1]);
                            }
                        }
                    } else {
                        bufferedReader.close();
                        this.materials.add(objMaterial.build());
                        return;
                    }
                } catch (IOException unused) {
                    return;
                }
            }
        }
    }
}
