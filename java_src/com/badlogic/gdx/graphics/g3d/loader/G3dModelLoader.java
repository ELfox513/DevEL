package com.badlogic.gdx.graphics.g3d.loader;

import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.ModelLoader;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.FloatAttribute;
import com.badlogic.gdx.graphics.g3d.model.data.ModelAnimation;
import com.badlogic.gdx.graphics.g3d.model.data.ModelData;
import com.badlogic.gdx.graphics.g3d.model.data.ModelMaterial;
import com.badlogic.gdx.graphics.g3d.model.data.ModelMesh;
import com.badlogic.gdx.graphics.g3d.model.data.ModelMeshPart;
import com.badlogic.gdx.graphics.g3d.model.data.ModelNode;
import com.badlogic.gdx.graphics.g3d.model.data.ModelNodeAnimation;
import com.badlogic.gdx.graphics.g3d.model.data.ModelNodeKeyframe;
import com.badlogic.gdx.graphics.g3d.model.data.ModelNodePart;
import com.badlogic.gdx.graphics.g3d.model.data.ModelTexture;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ArrayMap;
import com.badlogic.gdx.utils.BaseJsonReader;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.JsonValue;
/* loaded from: classes.dex */
public class G3dModelLoader extends ModelLoader<ModelLoader.ModelParameters> {
    public static final short VERSION_HI = 0;
    public static final short VERSION_LO = 1;

    /* renamed from: d */
    public final BaseJsonReader f4461d;

    /* renamed from: e */
    public final Quaternion f4462e;

    public G3dModelLoader(BaseJsonReader baseJsonReader) {
        this(baseJsonReader, null);
    }

    @Override // com.badlogic.gdx.assets.loaders.ModelLoader
    public ModelData loadModelData(FileHandle fileHandle, ModelLoader.ModelParameters modelParameters) {
        return parseModel(fileHandle);
    }

    public G3dModelLoader(BaseJsonReader baseJsonReader, FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f4462e = new Quaternion();
        this.f4461d = baseJsonReader;
    }

    /* JADX WARN: Type inference failed for: r10v2, types: [com.badlogic.gdx.math.Vector3, T] */
    /* JADX WARN: Type inference failed for: r15v6, types: [com.badlogic.gdx.math.Vector3, T] */
    /* JADX WARN: Type inference failed for: r8v8, types: [T, com.badlogic.gdx.math.Quaternion] */
    /* JADX WARN: Type inference failed for: r9v10, types: [com.badlogic.gdx.math.Vector3, T] */
    /* JADX WARN: Type inference failed for: r9v15, types: [com.badlogic.gdx.math.Vector3, T] */
    /* JADX WARN: Type inference failed for: r9v17, types: [T, com.badlogic.gdx.math.Quaternion] */
    /* renamed from: a */
    public void m24140a(ModelData modelData, JsonValue jsonValue) {
        ModelData modelData2 = modelData;
        JsonValue jsonValue2 = jsonValue.get("animations");
        if (jsonValue2 == null) {
            return;
        }
        modelData2.animations.ensureCapacity(jsonValue2.size);
        JsonValue jsonValue3 = jsonValue2.child;
        while (jsonValue3 != null) {
            JsonValue jsonValue4 = jsonValue3.get("bones");
            if (jsonValue4 != null) {
                ModelAnimation modelAnimation = new ModelAnimation();
                modelData2.animations.add(modelAnimation);
                modelAnimation.nodeAnimations.ensureCapacity(jsonValue4.size);
                modelAnimation.f4491id = jsonValue3.getString("id");
                for (JsonValue jsonValue5 = jsonValue4.child; jsonValue5 != null; jsonValue5 = jsonValue5.next) {
                    ModelNodeAnimation modelNodeAnimation = new ModelNodeAnimation();
                    modelAnimation.nodeAnimations.add(modelNodeAnimation);
                    modelNodeAnimation.nodeId = jsonValue5.getString("boneId");
                    JsonValue jsonValue6 = jsonValue5.get("keyframes");
                    float f = 1000.0f;
                    float f2 = 0.0f;
                    int i = 2;
                    int i2 = 1;
                    int i3 = 0;
                    int i4 = 3;
                    if (jsonValue6 != null && jsonValue6.isArray()) {
                        JsonValue jsonValue7 = jsonValue6.child;
                        while (jsonValue7 != null) {
                            float f3 = jsonValue7.getFloat("keytime", f2) / f;
                            JsonValue jsonValue8 = jsonValue7.get("translation");
                            if (jsonValue8 != null && jsonValue8.size == i4) {
                                if (modelNodeAnimation.translation == null) {
                                    modelNodeAnimation.translation = new Array<>();
                                }
                                ModelNodeKeyframe<Vector3> modelNodeKeyframe = new ModelNodeKeyframe<>();
                                modelNodeKeyframe.keytime = f3;
                                modelNodeKeyframe.value = new Vector3(jsonValue8.getFloat(i3), jsonValue8.getFloat(i2), jsonValue8.getFloat(i));
                                modelNodeAnimation.translation.add(modelNodeKeyframe);
                            }
                            JsonValue jsonValue9 = jsonValue7.get("rotation");
                            if (jsonValue9 != null && jsonValue9.size == 4) {
                                if (modelNodeAnimation.rotation == null) {
                                    modelNodeAnimation.rotation = new Array<>();
                                }
                                ModelNodeKeyframe<Quaternion> modelNodeKeyframe2 = new ModelNodeKeyframe<>();
                                modelNodeKeyframe2.keytime = f3;
                                modelNodeKeyframe2.value = new Quaternion(jsonValue9.getFloat(0), jsonValue9.getFloat(i2), jsonValue9.getFloat(i), jsonValue9.getFloat(3));
                                modelNodeAnimation.rotation.add(modelNodeKeyframe2);
                            }
                            JsonValue jsonValue10 = jsonValue7.get("scale");
                            if (jsonValue10 != null && jsonValue10.size == 3) {
                                if (modelNodeAnimation.scaling == null) {
                                    modelNodeAnimation.scaling = new Array<>();
                                }
                                ModelNodeKeyframe<Vector3> modelNodeKeyframe3 = new ModelNodeKeyframe<>();
                                modelNodeKeyframe3.keytime = f3;
                                modelNodeKeyframe3.value = new Vector3(jsonValue10.getFloat(0), jsonValue10.getFloat(1), jsonValue10.getFloat(2));
                                modelNodeAnimation.scaling.add(modelNodeKeyframe3);
                            }
                            jsonValue7 = jsonValue7.next;
                            f = 1000.0f;
                            f2 = 0.0f;
                            i = 2;
                            i2 = 1;
                            i3 = 0;
                            i4 = 3;
                        }
                    } else {
                        JsonValue jsonValue11 = jsonValue5.get("translation");
                        if (jsonValue11 != null && jsonValue11.isArray()) {
                            Array<ModelNodeKeyframe<Vector3>> array = new Array<>();
                            modelNodeAnimation.translation = array;
                            array.ensureCapacity(jsonValue11.size);
                            for (JsonValue jsonValue12 = jsonValue11.child; jsonValue12 != null; jsonValue12 = jsonValue12.next) {
                                ModelNodeKeyframe<Vector3> modelNodeKeyframe4 = new ModelNodeKeyframe<>();
                                modelNodeAnimation.translation.add(modelNodeKeyframe4);
                                modelNodeKeyframe4.keytime = jsonValue12.getFloat("keytime", 0.0f) / 1000.0f;
                                JsonValue jsonValue13 = jsonValue12.get("value");
                                if (jsonValue13 != null && jsonValue13.size >= 3) {
                                    modelNodeKeyframe4.value = new Vector3(jsonValue13.getFloat(0), jsonValue13.getFloat(1), jsonValue13.getFloat(2));
                                }
                            }
                        }
                        JsonValue jsonValue14 = jsonValue5.get("rotation");
                        if (jsonValue14 != null && jsonValue14.isArray()) {
                            Array<ModelNodeKeyframe<Quaternion>> array2 = new Array<>();
                            modelNodeAnimation.rotation = array2;
                            array2.ensureCapacity(jsonValue14.size);
                            for (JsonValue jsonValue15 = jsonValue14.child; jsonValue15 != null; jsonValue15 = jsonValue15.next) {
                                ModelNodeKeyframe<Quaternion> modelNodeKeyframe5 = new ModelNodeKeyframe<>();
                                modelNodeAnimation.rotation.add(modelNodeKeyframe5);
                                modelNodeKeyframe5.keytime = jsonValue15.getFloat("keytime", 0.0f) / 1000.0f;
                                JsonValue jsonValue16 = jsonValue15.get("value");
                                if (jsonValue16 != null && jsonValue16.size >= 4) {
                                    modelNodeKeyframe5.value = new Quaternion(jsonValue16.getFloat(0), jsonValue16.getFloat(1), jsonValue16.getFloat(2), jsonValue16.getFloat(3));
                                }
                            }
                        }
                        JsonValue jsonValue17 = jsonValue5.get("scaling");
                        if (jsonValue17 != null && jsonValue17.isArray()) {
                            Array<ModelNodeKeyframe<Vector3>> array3 = new Array<>();
                            modelNodeAnimation.scaling = array3;
                            array3.ensureCapacity(jsonValue17.size);
                            for (JsonValue jsonValue18 = jsonValue17.child; jsonValue18 != null; jsonValue18 = jsonValue18.next) {
                                ModelNodeKeyframe<Vector3> modelNodeKeyframe6 = new ModelNodeKeyframe<>();
                                modelNodeAnimation.scaling.add(modelNodeKeyframe6);
                                modelNodeKeyframe6.keytime = jsonValue18.getFloat("keytime", 0.0f) / 1000.0f;
                                JsonValue jsonValue19 = jsonValue18.get("value");
                                if (jsonValue19 != null && jsonValue19.size >= 3) {
                                    modelNodeKeyframe6.value = new Vector3(jsonValue19.getFloat(0), jsonValue19.getFloat(1), jsonValue19.getFloat(2));
                                }
                            }
                        }
                    }
                }
            }
            jsonValue3 = jsonValue3.next;
            modelData2 = modelData;
        }
    }

    /* renamed from: b */
    public VertexAttribute[] m24139b(JsonValue jsonValue) {
        Array array = new Array();
        int i = 0;
        int i2 = 0;
        for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
            String asString = jsonValue2.asString();
            if (asString.equals("POSITION")) {
                array.add(VertexAttribute.Position());
            } else if (asString.equals("NORMAL")) {
                array.add(VertexAttribute.Normal());
            } else if (asString.equals("COLOR")) {
                array.add(VertexAttribute.ColorUnpacked());
            } else if (asString.equals("COLORPACKED")) {
                array.add(VertexAttribute.ColorPacked());
            } else if (asString.equals("TANGENT")) {
                array.add(VertexAttribute.Tangent());
            } else if (asString.equals("BINORMAL")) {
                array.add(VertexAttribute.Binormal());
            } else if (asString.startsWith("TEXCOORD")) {
                array.add(VertexAttribute.TexCoords(i));
                i++;
            } else if (asString.startsWith("BLENDWEIGHT")) {
                array.add(VertexAttribute.BoneWeight(i2));
                i2++;
            } else {
                throw new GdxRuntimeException("Unknown vertex attribute '" + asString + "', should be one of position, normal, uv, tangent or binormal");
            }
        }
        return (VertexAttribute[]) array.toArray(VertexAttribute.class);
    }

    /* renamed from: c */
    public Color m24138c(JsonValue jsonValue) {
        if (jsonValue.size >= 3) {
            return new Color(jsonValue.getFloat(0), jsonValue.getFloat(1), jsonValue.getFloat(2), 1.0f);
        }
        throw new GdxRuntimeException("Expected Color values <> than three.");
    }

    /* renamed from: d */
    public void m24137d(ModelData modelData, JsonValue jsonValue, String str) {
        JsonValue jsonValue2 = jsonValue.get("materials");
        if (jsonValue2 != null) {
            modelData.materials.ensureCapacity(jsonValue2.size);
            for (JsonValue jsonValue3 = jsonValue2.child; jsonValue3 != null; jsonValue3 = jsonValue3.next) {
                ModelMaterial modelMaterial = new ModelMaterial();
                String string = jsonValue3.getString("id", null);
                if (string != null) {
                    modelMaterial.f4493id = string;
                    JsonValue jsonValue4 = jsonValue3.get("diffuse");
                    if (jsonValue4 != null) {
                        modelMaterial.diffuse = m24138c(jsonValue4);
                    }
                    JsonValue jsonValue5 = jsonValue3.get("ambient");
                    if (jsonValue5 != null) {
                        modelMaterial.ambient = m24138c(jsonValue5);
                    }
                    JsonValue jsonValue6 = jsonValue3.get("emissive");
                    if (jsonValue6 != null) {
                        modelMaterial.emissive = m24138c(jsonValue6);
                    }
                    JsonValue jsonValue7 = jsonValue3.get("specular");
                    if (jsonValue7 != null) {
                        modelMaterial.specular = m24138c(jsonValue7);
                    }
                    JsonValue jsonValue8 = jsonValue3.get("reflection");
                    if (jsonValue8 != null) {
                        modelMaterial.reflection = m24138c(jsonValue8);
                    }
                    modelMaterial.shininess = jsonValue3.getFloat(FloatAttribute.ShininessAlias, 0.0f);
                    modelMaterial.opacity = jsonValue3.getFloat("opacity", 1.0f);
                    JsonValue jsonValue9 = jsonValue3.get("textures");
                    if (jsonValue9 != null) {
                        for (JsonValue jsonValue10 = jsonValue9.child; jsonValue10 != null; jsonValue10 = jsonValue10.next) {
                            ModelTexture modelTexture = new ModelTexture();
                            String string2 = jsonValue10.getString("id", null);
                            if (string2 != null) {
                                modelTexture.f4498id = string2;
                                String string3 = jsonValue10.getString("filename", null);
                                if (string3 != null) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(str);
                                    String str2 = "/";
                                    sb.append((str.length() == 0 || str.endsWith("/")) ? "" : "");
                                    sb.append(string3);
                                    modelTexture.fileName = sb.toString();
                                    modelTexture.uvTranslation = m24131j(jsonValue10.get("uvTranslation"), 0.0f, 0.0f);
                                    modelTexture.uvScaling = m24131j(jsonValue10.get("uvScaling"), 1.0f, 1.0f);
                                    String string4 = jsonValue10.getString("type", null);
                                    if (string4 != null) {
                                        modelTexture.usage = m24133h(string4);
                                        if (modelMaterial.textures == null) {
                                            modelMaterial.textures = new Array<>();
                                        }
                                        modelMaterial.textures.add(modelTexture);
                                    } else {
                                        throw new GdxRuntimeException("Texture needs type.");
                                    }
                                } else {
                                    throw new GdxRuntimeException("Texture needs filename.");
                                }
                            } else {
                                throw new GdxRuntimeException("Texture has no id.");
                            }
                        }
                        continue;
                    }
                    modelData.materials.add(modelMaterial);
                } else {
                    throw new GdxRuntimeException("Material needs an id.");
                }
            }
        }
    }

    /* renamed from: e */
    public void m24136e(ModelData modelData, JsonValue jsonValue) {
        JsonValue jsonValue2 = jsonValue.get("meshes");
        if (jsonValue2 != null) {
            modelData.meshes.ensureCapacity(jsonValue2.size);
            for (JsonValue jsonValue3 = jsonValue2.child; jsonValue3 != null; jsonValue3 = jsonValue3.next) {
                ModelMesh modelMesh = new ModelMesh();
                modelMesh.f4495id = jsonValue3.getString("id", "");
                modelMesh.attributes = m24139b(jsonValue3.require("attributes"));
                modelMesh.vertices = jsonValue3.require("vertices").asFloatArray();
                JsonValue require = jsonValue3.require("parts");
                Array array = new Array();
                for (JsonValue jsonValue4 = require.child; jsonValue4 != null; jsonValue4 = jsonValue4.next) {
                    ModelMeshPart modelMeshPart = new ModelMeshPart();
                    String string = jsonValue4.getString("id", null);
                    if (string != null) {
                        Array.ArrayIterator it = array.iterator();
                        while (it.hasNext()) {
                            if (((ModelMeshPart) it.next()).f4496id.equals(string)) {
                                throw new GdxRuntimeException("Mesh part with id '" + string + "' already in defined");
                            }
                        }
                        modelMeshPart.f4496id = string;
                        String string2 = jsonValue4.getString("type", null);
                        if (string2 != null) {
                            modelMeshPart.primitiveType = m24132i(string2);
                            modelMeshPart.indices = jsonValue4.require("indices").asShortArray();
                            array.add(modelMeshPart);
                        } else {
                            throw new GdxRuntimeException("No primitive type given for mesh part '" + string + "'");
                        }
                    } else {
                        throw new GdxRuntimeException("Not id given for mesh part");
                    }
                }
                modelMesh.parts = (ModelMeshPart[]) array.toArray(ModelMeshPart.class);
                modelData.meshes.add(modelMesh);
            }
        }
    }

    /* renamed from: f */
    public Array<ModelNode> m24135f(ModelData modelData, JsonValue jsonValue) {
        JsonValue jsonValue2 = jsonValue.get("nodes");
        if (jsonValue2 != null) {
            modelData.nodes.ensureCapacity(jsonValue2.size);
            for (JsonValue jsonValue3 = jsonValue2.child; jsonValue3 != null; jsonValue3 = jsonValue3.next) {
                modelData.nodes.add(m24134g(jsonValue3));
            }
        }
        return modelData.nodes;
    }

    /* renamed from: g */
    public ModelNode m24134g(JsonValue jsonValue) {
        Vector3 vector3;
        Quaternion quaternion;
        Vector3 vector32;
        String str;
        String str2;
        int i;
        G3dModelLoader g3dModelLoader = this;
        ModelNode modelNode = new ModelNode();
        String str3 = null;
        String string = jsonValue.getString("id", null);
        if (string != null) {
            modelNode.f4497id = string;
            String str4 = "translation";
            JsonValue jsonValue2 = jsonValue.get("translation");
            if (jsonValue2 != null && jsonValue2.size != 3) {
                throw new GdxRuntimeException("Node translation incomplete");
            }
            boolean z = true;
            if (jsonValue2 == null) {
                vector3 = null;
            } else {
                vector3 = new Vector3(jsonValue2.getFloat(0), jsonValue2.getFloat(1), jsonValue2.getFloat(2));
            }
            modelNode.translation = vector3;
            String str5 = "rotation";
            JsonValue jsonValue3 = jsonValue.get("rotation");
            if (jsonValue3 != null && jsonValue3.size != 4) {
                throw new GdxRuntimeException("Node rotation incomplete");
            }
            if (jsonValue3 == null) {
                quaternion = null;
            } else {
                quaternion = new Quaternion(jsonValue3.getFloat(0), jsonValue3.getFloat(1), jsonValue3.getFloat(2), jsonValue3.getFloat(3));
            }
            modelNode.rotation = quaternion;
            JsonValue jsonValue4 = jsonValue.get("scale");
            if (jsonValue4 != null && jsonValue4.size != 3) {
                throw new GdxRuntimeException("Node scale incomplete");
            }
            if (jsonValue4 == null) {
                vector32 = null;
            } else {
                vector32 = new Vector3(jsonValue4.getFloat(0), jsonValue4.getFloat(1), jsonValue4.getFloat(2));
            }
            modelNode.scale = vector32;
            String string2 = jsonValue.getString("mesh", null);
            if (string2 != null) {
                modelNode.meshId = string2;
            }
            JsonValue jsonValue5 = jsonValue.get("parts");
            if (jsonValue5 != null) {
                modelNode.parts = new ModelNodePart[jsonValue5.size];
                JsonValue jsonValue6 = jsonValue5.child;
                int i2 = 0;
                while (jsonValue6 != null) {
                    ModelNodePart modelNodePart = new ModelNodePart();
                    String string3 = jsonValue6.getString("meshpartid", str3);
                    String string4 = jsonValue6.getString("materialid", str3);
                    if (string3 != null && string4 != null) {
                        modelNodePart.materialId = string4;
                        modelNodePart.meshPartId = string3;
                        JsonValue jsonValue7 = jsonValue6.get("bones");
                        if (jsonValue7 != null) {
                            modelNodePart.bones = new ArrayMap<>(z, jsonValue7.size, String.class, Matrix4.class);
                            JsonValue jsonValue8 = jsonValue7.child;
                            while (jsonValue8 != null) {
                                String string5 = jsonValue8.getString("node", null);
                                if (string5 != null) {
                                    Matrix4 matrix4 = new Matrix4();
                                    JsonValue jsonValue9 = jsonValue8.get(str4);
                                    if (jsonValue9 != null && jsonValue9.size >= 3) {
                                        str = str4;
                                        matrix4.translate(jsonValue9.getFloat(0), jsonValue9.getFloat(1), jsonValue9.getFloat(2));
                                    } else {
                                        str = str4;
                                    }
                                    JsonValue jsonValue10 = jsonValue8.get(str5);
                                    if (jsonValue10 != null && jsonValue10.size >= 4) {
                                        str2 = str5;
                                        i = 3;
                                        matrix4.rotate(g3dModelLoader.f4462e.set(jsonValue10.getFloat(0), jsonValue10.getFloat(1), jsonValue10.getFloat(2), jsonValue10.getFloat(3)));
                                    } else {
                                        str2 = str5;
                                        i = 3;
                                    }
                                    JsonValue jsonValue11 = jsonValue8.get("scale");
                                    if (jsonValue11 != null && jsonValue11.size >= i) {
                                        matrix4.scale(jsonValue11.getFloat(0), jsonValue11.getFloat(1), jsonValue11.getFloat(2));
                                    }
                                    modelNodePart.bones.put(string5, matrix4);
                                    jsonValue8 = jsonValue8.next;
                                    g3dModelLoader = this;
                                    str4 = str;
                                    str5 = str2;
                                } else {
                                    throw new GdxRuntimeException("Bone node ID missing");
                                }
                            }
                            continue;
                        }
                        modelNode.parts[i2] = modelNodePart;
                        jsonValue6 = jsonValue6.next;
                        i2++;
                        str3 = null;
                        g3dModelLoader = this;
                        str4 = str4;
                        str5 = str5;
                        z = true;
                    } else {
                        throw new GdxRuntimeException("Node " + string + " part is missing meshPartId or materialId");
                    }
                }
            }
            JsonValue jsonValue12 = jsonValue.get("children");
            if (jsonValue12 != null) {
                modelNode.children = new ModelNode[jsonValue12.size];
                JsonValue jsonValue13 = jsonValue12.child;
                int i3 = 0;
                while (jsonValue13 != null) {
                    modelNode.children[i3] = m24134g(jsonValue13);
                    jsonValue13 = jsonValue13.next;
                    i3++;
                }
            }
            return modelNode;
        }
        throw new GdxRuntimeException("Node id missing.");
    }

    /* renamed from: h */
    public int m24133h(String str) {
        if (str.equalsIgnoreCase("AMBIENT")) {
            return 4;
        }
        if (str.equalsIgnoreCase("BUMP")) {
            return 8;
        }
        if (str.equalsIgnoreCase("DIFFUSE")) {
            return 2;
        }
        if (str.equalsIgnoreCase("EMISSIVE")) {
            return 3;
        }
        if (str.equalsIgnoreCase("NONE")) {
            return 1;
        }
        if (str.equalsIgnoreCase("NORMAL")) {
            return 7;
        }
        if (str.equalsIgnoreCase("REFLECTION")) {
            return 10;
        }
        if (str.equalsIgnoreCase("SHININESS")) {
            return 6;
        }
        if (str.equalsIgnoreCase("SPECULAR")) {
            return 5;
        }
        if (str.equalsIgnoreCase("TRANSPARENCY")) {
            return 9;
        }
        return 0;
    }

    /* renamed from: i */
    public int m24132i(String str) {
        if (str.equals("TRIANGLES")) {
            return 4;
        }
        if (str.equals("LINES")) {
            return 1;
        }
        if (str.equals("POINTS")) {
            return 0;
        }
        if (str.equals("TRIANGLE_STRIP")) {
            return 5;
        }
        if (str.equals("LINE_STRIP")) {
            return 3;
        }
        throw new GdxRuntimeException("Unknown primitive type '" + str + "', should be one of triangle, trianglestrip, line, linestrip, lineloop or point");
    }

    /* renamed from: j */
    public Vector2 m24131j(JsonValue jsonValue, float f, float f2) {
        if (jsonValue == null) {
            return new Vector2(f, f2);
        }
        if (jsonValue.size == 2) {
            return new Vector2(jsonValue.getFloat(0), jsonValue.getFloat(1));
        }
        throw new GdxRuntimeException("Expected Vector2 values <> than two.");
    }

    public ModelData parseModel(FileHandle fileHandle) {
        JsonValue parse = this.f4461d.parse(fileHandle);
        ModelData modelData = new ModelData();
        JsonValue require = parse.require("version");
        modelData.version[0] = require.getShort(0);
        modelData.version[1] = require.getShort(1);
        short[] sArr = modelData.version;
        if (sArr[0] == 0 && sArr[1] == 1) {
            modelData.f4492id = parse.getString("id", "");
            m24136e(modelData, parse);
            m24137d(modelData, parse, fileHandle.parent().path());
            m24135f(modelData, parse);
            m24140a(modelData, parse);
            return modelData;
        }
        throw new GdxRuntimeException("Model version not supported");
    }
}
