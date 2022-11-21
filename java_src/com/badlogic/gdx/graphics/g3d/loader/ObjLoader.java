package com.badlogic.gdx.graphics.g3d.loader;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.ModelLoader;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.model.data.ModelData;
import com.badlogic.gdx.graphics.g3d.model.data.ModelMesh;
import com.badlogic.gdx.graphics.g3d.model.data.ModelMeshPart;
import com.badlogic.gdx.graphics.g3d.model.data.ModelNode;
import com.badlogic.gdx.graphics.g3d.model.data.ModelNodePart;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.FloatArray;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class ObjLoader extends ModelLoader<ObjLoaderParameters> {
    public static boolean logWarning = false;

    /* renamed from: d */
    public final FloatArray f4474d;

    /* renamed from: e */
    public final FloatArray f4475e;

    /* renamed from: f */
    public final FloatArray f4476f;

    /* renamed from: g */
    public final Array<Group> f4477g;

    /* loaded from: classes.dex */
    public static class ObjLoaderParameters extends ModelLoader.ModelParameters {
        public boolean flipV;

        public ObjLoaderParameters() {
        }

        public ObjLoaderParameters(boolean z) {
            this.flipV = z;
        }
    }

    public ObjLoader() {
        this(null);
    }

    public Model loadModel(FileHandle fileHandle, boolean z) {
        return loadModel(fileHandle, (FileHandle) new ObjLoaderParameters(z));
    }

    /* loaded from: classes.dex */
    public static class Group {

        /* renamed from: a */
        public final String f4478a;

        /* renamed from: e */
        public boolean f4482e;

        /* renamed from: f */
        public boolean f4483f;

        /* renamed from: c */
        public Array<Integer> f4480c = new Array<>((int) HttpStatus.SC_OK);

        /* renamed from: d */
        public int f4481d = 0;

        /* renamed from: g */
        public Material f4484g = new Material("");

        /* renamed from: b */
        public String f4479b = "default";

        public Group(String str) {
            this.f4478a = str;
        }
    }

    public ObjLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f4474d = new FloatArray(300);
        this.f4475e = new FloatArray(300);
        this.f4476f = new FloatArray((int) HttpStatus.SC_OK);
        this.f4477g = new Array<>(10);
    }

    /* renamed from: a */
    public final int m24128a(String str, int i) {
        if (str != null && str.length() != 0) {
            int parseInt = Integer.parseInt(str);
            if (parseInt < 0) {
                return i + parseInt;
            }
            return parseInt - 1;
        }
        return 0;
    }

    /* renamed from: b */
    public ModelData m24127b(FileHandle fileHandle, boolean z) {
        int i;
        int i2;
        int i3;
        String str;
        String str2;
        String str3;
        int i4;
        char charAt;
        float parseFloat;
        if (logWarning) {
            Gdx.app.error("ObjLoader", "Wavefront (OBJ) is not fully supported, consult the documentation for more information");
        }
        MtlLoader mtlLoader = new MtlLoader();
        Group group = new Group("default");
        this.f4477g.add(group);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileHandle.read()), 4096);
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                String[] split = readLine.split("\\s+");
                if (split.length < 1) {
                    break;
                } else if (split[0].length() != 0 && (charAt = split[0].toLowerCase().charAt(0)) != '#') {
                    if (charAt == 'v') {
                        if (split[0].length() == 1) {
                            this.f4474d.add(Float.parseFloat(split[1]));
                            this.f4474d.add(Float.parseFloat(split[2]));
                            this.f4474d.add(Float.parseFloat(split[3]));
                        } else if (split[0].charAt(1) == 'n') {
                            this.f4475e.add(Float.parseFloat(split[1]));
                            this.f4475e.add(Float.parseFloat(split[2]));
                            this.f4475e.add(Float.parseFloat(split[3]));
                        } else if (split[0].charAt(1) == 't') {
                            this.f4476f.add(Float.parseFloat(split[1]));
                            FloatArray floatArray = this.f4476f;
                            if (z) {
                                parseFloat = 1.0f - Float.parseFloat(split[2]);
                            } else {
                                parseFloat = Float.parseFloat(split[2]);
                            }
                            floatArray.add(parseFloat);
                        }
                    } else if (charAt == 'f') {
                        Array<Integer> array = group.f4480c;
                        int i5 = 1;
                        while (i5 < split.length - 2) {
                            String[] split2 = split[1].split("/");
                            array.add(Integer.valueOf(m24128a(split2[0], this.f4474d.size)));
                            if (split2.length > 2) {
                                if (i5 == 1) {
                                    group.f4482e = true;
                                }
                                array.add(Integer.valueOf(m24128a(split2[2], this.f4475e.size)));
                            }
                            if (split2.length > 1 && split2[1].length() > 0) {
                                if (i5 == 1) {
                                    group.f4483f = true;
                                }
                                array.add(Integer.valueOf(m24128a(split2[1], this.f4476f.size)));
                            }
                            int i6 = i5 + 1;
                            String[] split3 = split[i6].split("/");
                            array.add(Integer.valueOf(m24128a(split3[0], this.f4474d.size)));
                            if (split3.length > 2) {
                                array.add(Integer.valueOf(m24128a(split3[2], this.f4475e.size)));
                            }
                            if (split3.length > 1 && split3[1].length() > 0) {
                                array.add(Integer.valueOf(m24128a(split3[1], this.f4476f.size)));
                            }
                            int i7 = i6 + 1;
                            String[] split4 = split[i7].split("/");
                            array.add(Integer.valueOf(m24128a(split4[0], this.f4474d.size)));
                            if (split4.length > 2) {
                                array.add(Integer.valueOf(m24128a(split4[2], this.f4475e.size)));
                            }
                            if (split4.length > 1 && split4[1].length() > 0) {
                                array.add(Integer.valueOf(m24128a(split4[1], this.f4476f.size)));
                            }
                            group.f4481d++;
                            i5 = i7 - 1;
                        }
                    } else {
                        if (charAt != 'o' && charAt != 'g') {
                            if (split[0].equals("mtllib")) {
                                mtlLoader.load(fileHandle.parent().child(split[1]));
                            } else if (split[0].equals("usemtl")) {
                                if (split.length == 1) {
                                    group.f4479b = "default";
                                } else {
                                    group.f4479b = split[1].replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '_');
                                }
                            }
                        }
                        if (split.length > 1) {
                            group = m24126c(split[1]);
                        } else {
                            group = m24126c("default");
                        }
                    }
                }
            } catch (IOException unused) {
                return null;
            }
        }
        bufferedReader.close();
        int i8 = 0;
        while (true) {
            Array<Group> array2 = this.f4477g;
            i = array2.size;
            if (i8 >= i) {
                break;
            }
            if (array2.get(i8).f4481d < 1) {
                this.f4477g.removeIndex(i8);
                i8--;
            }
            i8++;
        }
        if (i < 1) {
            return null;
        }
        ModelData modelData = new ModelData();
        int i9 = 0;
        int i10 = 0;
        while (i9 < i) {
            Group group2 = this.f4477g.get(i9);
            Array<Integer> array3 = group2.f4480c;
            int i11 = array3.size;
            int i12 = group2.f4481d;
            boolean z2 = group2.f4482e;
            boolean z3 = group2.f4483f;
            int i13 = i12 * 3;
            if (z2) {
                i2 = 3;
            } else {
                i2 = 0;
            }
            int i14 = i2 + 3;
            if (z3) {
                i3 = 2;
            } else {
                i3 = 0;
            }
            float[] fArr = new float[i13 * (i14 + i3)];
            int i15 = 0;
            int i16 = 0;
            while (i15 < i11) {
                int i17 = i15 + 1;
                int intValue = array3.get(i15).intValue() * 3;
                int i18 = i16 + 1;
                int i19 = i;
                int i20 = i11;
                int i21 = intValue + 1;
                fArr[i16] = this.f4474d.get(intValue);
                int i22 = i18 + 1;
                int i23 = i9;
                fArr[i18] = this.f4474d.get(i21);
                int i24 = i22 + 1;
                fArr[i22] = this.f4474d.get(i21 + 1);
                if (z2) {
                    int i25 = i17 + 1;
                    int intValue2 = array3.get(i17).intValue() * 3;
                    int i26 = i24 + 1;
                    int i27 = intValue2 + 1;
                    fArr[i24] = this.f4475e.get(intValue2);
                    int i28 = i26 + 1;
                    fArr[i26] = this.f4475e.get(i27);
                    i24 = i28 + 1;
                    fArr[i28] = this.f4475e.get(i27 + 1);
                    i17 = i25;
                }
                if (z3) {
                    int i29 = i17 + 1;
                    int intValue3 = array3.get(i17).intValue() * 2;
                    int i30 = i24 + 1;
                    int i31 = intValue3 + 1;
                    fArr[i24] = this.f4476f.get(intValue3);
                    i4 = i30 + 1;
                    fArr[i30] = this.f4476f.get(i31);
                    i15 = i29;
                } else {
                    i4 = i24;
                    i15 = i17;
                }
                i11 = i20;
                i9 = i23;
                i16 = i4;
                i = i19;
            }
            int i32 = i9;
            int i33 = i;
            if (i13 >= 32767) {
                i13 = 0;
            }
            short[] sArr = new short[i13];
            if (i13 > 0) {
                for (int i34 = 0; i34 < i13; i34++) {
                    sArr[i34] = (short) i34;
                }
            }
            Array array4 = new Array();
            array4.add(new VertexAttribute(1, 3, ShaderProgram.POSITION_ATTRIBUTE));
            if (z2) {
                array4.add(new VertexAttribute(8, 3, ShaderProgram.NORMAL_ATTRIBUTE));
            }
            if (z3) {
                array4.add(new VertexAttribute(16, 2, "a_texCoord0"));
            }
            i10++;
            String num = Integer.toString(i10);
            if ("default".equals(group2.f4478a)) {
                str = "node" + num;
            } else {
                str = group2.f4478a;
            }
            if ("default".equals(group2.f4478a)) {
                str2 = "mesh" + num;
            } else {
                str2 = group2.f4478a;
            }
            if ("default".equals(group2.f4478a)) {
                str3 = "part" + num;
            } else {
                str3 = group2.f4478a;
            }
            ModelNode modelNode = new ModelNode();
            modelNode.f4497id = str;
            modelNode.meshId = str2;
            modelNode.scale = new Vector3(1.0f, 1.0f, 1.0f);
            modelNode.translation = new Vector3();
            modelNode.rotation = new Quaternion();
            ModelNodePart modelNodePart = new ModelNodePart();
            modelNodePart.meshPartId = str3;
            modelNodePart.materialId = group2.f4479b;
            modelNode.parts = new ModelNodePart[]{modelNodePart};
            ModelMeshPart modelMeshPart = new ModelMeshPart();
            modelMeshPart.f4496id = str3;
            modelMeshPart.indices = sArr;
            modelMeshPart.primitiveType = 4;
            ModelMesh modelMesh = new ModelMesh();
            modelMesh.f4495id = str2;
            modelMesh.attributes = (VertexAttribute[]) array4.toArray(VertexAttribute.class);
            modelMesh.vertices = fArr;
            modelMesh.parts = new ModelMeshPart[]{modelMeshPart};
            modelData.nodes.add(modelNode);
            modelData.meshes.add(modelMesh);
            modelData.materials.add(mtlLoader.getMaterial(group2.f4479b));
            i9 = i32 + 1;
            i = i33;
        }
        FloatArray floatArray2 = this.f4474d;
        if (floatArray2.size > 0) {
            floatArray2.clear();
        }
        FloatArray floatArray3 = this.f4475e;
        if (floatArray3.size > 0) {
            floatArray3.clear();
        }
        FloatArray floatArray4 = this.f4476f;
        if (floatArray4.size > 0) {
            floatArray4.clear();
        }
        Array<Group> array5 = this.f4477g;
        if (array5.size > 0) {
            array5.clear();
        }
        return modelData;
    }

    /* renamed from: c */
    public final Group m24126c(String str) {
        Array.ArrayIterator<Group> it = this.f4477g.iterator();
        while (it.hasNext()) {
            Group next = it.next();
            if (next.f4478a.equals(str)) {
                return next;
            }
        }
        Group group = new Group(str);
        this.f4477g.add(group);
        return group;
    }

    @Override // com.badlogic.gdx.assets.loaders.ModelLoader
    public ModelData loadModelData(FileHandle fileHandle, ObjLoaderParameters objLoaderParameters) {
        return m24127b(fileHandle, objLoaderParameters != null && objLoaderParameters.flipV);
    }
}
