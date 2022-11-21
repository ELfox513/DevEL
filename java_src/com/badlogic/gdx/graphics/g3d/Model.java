package com.badlogic.gdx.graphics.g3d;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g3d.attributes.BlendingAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.ColorAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.FloatAttribute;
import com.badlogic.gdx.graphics.g3d.attributes.TextureAttribute;
import com.badlogic.gdx.graphics.g3d.model.Animation;
import com.badlogic.gdx.graphics.g3d.model.MeshPart;
import com.badlogic.gdx.graphics.g3d.model.Node;
import com.badlogic.gdx.graphics.g3d.model.NodeAnimation;
import com.badlogic.gdx.graphics.g3d.model.NodeKeyframe;
import com.badlogic.gdx.graphics.g3d.model.NodePart;
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
import com.badlogic.gdx.graphics.g3d.utils.TextureDescriptor;
import com.badlogic.gdx.graphics.g3d.utils.TextureProvider;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.BoundingBox;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.ArrayMap;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Model implements Disposable {

    /* renamed from: a */
    public final Array<Disposable> f4368a;
    public final Array<Animation> animations;

    /* renamed from: b */
    public ObjectMap<NodePart, ArrayMap<String, Matrix4>> f4369b;
    public final Array<Material> materials;
    public final Array<MeshPart> meshParts;
    public final Array<Mesh> meshes;
    public final Array<Node> nodes;

    public Model() {
        this.materials = new Array<>();
        this.nodes = new Array<>();
        this.animations = new Array<>();
        this.meshes = new Array<>();
        this.meshParts = new Array<>();
        this.f4368a = new Array<>();
        this.f4369b = new ObjectMap<>();
    }

    public Animation getAnimation(String str) {
        return getAnimation(str, true);
    }

    public Iterable<Disposable> getManagedDisposables() {
        return this.f4368a;
    }

    public Material getMaterial(String str) {
        return getMaterial(str, true);
    }

    public Node getNode(String str) {
        return getNode(str, true);
    }

    public void manageDisposable(Disposable disposable) {
        if (this.f4368a.contains(disposable, true)) {
            return;
        }
        this.f4368a.add(disposable);
    }

    /* renamed from: a */
    public Material m24176a(ModelMaterial modelMaterial, TextureProvider textureProvider) {
        Texture load;
        float f;
        float f2;
        float f3;
        float f4;
        Material material = new Material();
        material.f4367id = modelMaterial.f4493id;
        if (modelMaterial.ambient != null) {
            material.set(new ColorAttribute(ColorAttribute.Ambient, modelMaterial.ambient));
        }
        if (modelMaterial.diffuse != null) {
            material.set(new ColorAttribute(ColorAttribute.Diffuse, modelMaterial.diffuse));
        }
        if (modelMaterial.specular != null) {
            material.set(new ColorAttribute(ColorAttribute.Specular, modelMaterial.specular));
        }
        if (modelMaterial.emissive != null) {
            material.set(new ColorAttribute(ColorAttribute.Emissive, modelMaterial.emissive));
        }
        if (modelMaterial.reflection != null) {
            material.set(new ColorAttribute(ColorAttribute.Reflection, modelMaterial.reflection));
        }
        if (modelMaterial.shininess > 0.0f) {
            material.set(new FloatAttribute(FloatAttribute.Shininess, modelMaterial.shininess));
        }
        if (modelMaterial.opacity != 1.0f) {
            material.set(new BlendingAttribute(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA, modelMaterial.opacity));
        }
        ObjectMap objectMap = new ObjectMap();
        Array<ModelTexture> array = modelMaterial.textures;
        if (array != null) {
            Array.ArrayIterator<ModelTexture> it = array.iterator();
            while (it.hasNext()) {
                ModelTexture next = it.next();
                if (objectMap.containsKey(next.fileName)) {
                    load = (Texture) objectMap.get(next.fileName);
                } else {
                    load = textureProvider.load(next.fileName);
                    objectMap.put(next.fileName, load);
                    this.f4368a.add(load);
                }
                TextureDescriptor textureDescriptor = new TextureDescriptor(load);
                textureDescriptor.minFilter = load.getMinFilter();
                textureDescriptor.magFilter = load.getMagFilter();
                textureDescriptor.uWrap = load.getUWrap();
                textureDescriptor.vWrap = load.getVWrap();
                Vector2 vector2 = next.uvTranslation;
                if (vector2 == null) {
                    f = 0.0f;
                } else {
                    f = vector2.f5527x;
                }
                if (vector2 == null) {
                    f2 = 0.0f;
                } else {
                    f2 = vector2.f5528y;
                }
                Vector2 vector22 = next.uvScaling;
                if (vector22 == null) {
                    f3 = 1.0f;
                } else {
                    f3 = vector22.f5527x;
                }
                if (vector22 == null) {
                    f4 = 1.0f;
                } else {
                    f4 = vector22.f5528y;
                }
                int i = next.usage;
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                if (i != 7) {
                                    if (i != 8) {
                                        if (i == 10) {
                                            material.set(new TextureAttribute(TextureAttribute.Reflection, textureDescriptor, f, f2, f3, f4));
                                        }
                                    } else {
                                        material.set(new TextureAttribute(TextureAttribute.Bump, textureDescriptor, f, f2, f3, f4));
                                    }
                                } else {
                                    material.set(new TextureAttribute(TextureAttribute.Normal, textureDescriptor, f, f2, f3, f4));
                                }
                            } else {
                                material.set(new TextureAttribute(TextureAttribute.Specular, textureDescriptor, f, f2, f3, f4));
                            }
                        } else {
                            material.set(new TextureAttribute(TextureAttribute.Ambient, textureDescriptor, f, f2, f3, f4));
                        }
                    } else {
                        material.set(new TextureAttribute(TextureAttribute.Emissive, textureDescriptor, f, f2, f3, f4));
                    }
                } else {
                    material.set(new TextureAttribute(TextureAttribute.Diffuse, textureDescriptor, f, f2, f3, f4));
                }
            }
        }
        return material;
    }

    /* renamed from: b */
    public void m24175b(ModelMesh modelMesh) {
        boolean z;
        ModelMeshPart[] modelMeshPartArr;
        int i;
        int i2 = 0;
        for (ModelMeshPart modelMeshPart : modelMesh.parts) {
            i2 += modelMeshPart.indices.length;
        }
        if (i2 > 0) {
            z = true;
        } else {
            z = false;
        }
        VertexAttributes vertexAttributes = new VertexAttributes(modelMesh.attributes);
        int length = modelMesh.vertices.length / (vertexAttributes.vertexSize / 4);
        Mesh mesh = new Mesh(true, length, i2, vertexAttributes);
        this.meshes.add(mesh);
        this.f4368a.add(mesh);
        BufferUtils.copy(modelMesh.vertices, mesh.getVerticesBuffer(), modelMesh.vertices.length, 0);
        mesh.getIndicesBuffer().clear();
        int i3 = 0;
        for (ModelMeshPart modelMeshPart2 : modelMesh.parts) {
            MeshPart meshPart = new MeshPart();
            meshPart.f4487id = modelMeshPart2.f4496id;
            meshPart.primitiveType = modelMeshPart2.primitiveType;
            meshPart.offset = i3;
            if (z) {
                i = modelMeshPart2.indices.length;
            } else {
                i = length;
            }
            meshPart.size = i;
            meshPart.mesh = mesh;
            if (z) {
                mesh.getIndicesBuffer().put(modelMeshPart2.indices);
            }
            i3 += meshPart.size;
            this.meshParts.add(meshPart);
        }
        mesh.getIndicesBuffer().position(0);
        Array.ArrayIterator<MeshPart> it = this.meshParts.iterator();
        while (it.hasNext()) {
            it.next().update();
        }
    }

    /* renamed from: c */
    public void m24174c(ModelData modelData, TextureProvider textureProvider) {
        m24171f(modelData.meshes);
        m24172e(modelData.materials, textureProvider);
        m24169h(modelData.nodes);
        m24173d(modelData.animations);
        calculateTransforms();
    }

    public void calculateTransforms() {
        int i = this.nodes.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.nodes.get(i2).calculateTransforms(true);
        }
        for (int i3 = 0; i3 < i; i3++) {
            this.nodes.get(i3).calculateBoneTransforms(true);
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Array.ArrayIterator<Disposable> it = this.f4368a.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
    }

    public BoundingBox extendBoundingBox(BoundingBox boundingBox) {
        int i = this.nodes.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.nodes.get(i2).extendBoundingBox(boundingBox);
        }
        return boundingBox;
    }

    /* renamed from: g */
    public Node m24170g(ModelNode modelNode) {
        MeshPart meshPart;
        Node node = new Node();
        node.f4490id = modelNode.f4497id;
        Vector3 vector3 = modelNode.translation;
        if (vector3 != null) {
            node.translation.set(vector3);
        }
        Quaternion quaternion = modelNode.rotation;
        if (quaternion != null) {
            node.rotation.set(quaternion);
        }
        Vector3 vector32 = modelNode.scale;
        if (vector32 != null) {
            node.scale.set(vector32);
        }
        ModelNodePart[] modelNodePartArr = modelNode.parts;
        if (modelNodePartArr != null) {
            for (ModelNodePart modelNodePart : modelNodePartArr) {
                Material material = null;
                if (modelNodePart.meshPartId != null) {
                    Array.ArrayIterator<MeshPart> it = this.meshParts.iterator();
                    while (it.hasNext()) {
                        meshPart = it.next();
                        if (modelNodePart.meshPartId.equals(meshPart.f4487id)) {
                            break;
                        }
                    }
                }
                meshPart = null;
                if (modelNodePart.materialId != null) {
                    Array.ArrayIterator<Material> it2 = this.materials.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        Material next = it2.next();
                        if (modelNodePart.materialId.equals(next.f4367id)) {
                            material = next;
                            break;
                        }
                    }
                }
                if (meshPart != null && material != null) {
                    NodePart nodePart = new NodePart();
                    nodePart.meshPart = meshPart;
                    nodePart.material = material;
                    node.parts.add(nodePart);
                    ArrayMap<String, Matrix4> arrayMap = modelNodePart.bones;
                    if (arrayMap != null) {
                        this.f4369b.put(nodePart, arrayMap);
                    }
                } else {
                    throw new GdxRuntimeException("Invalid node: " + node.f4490id);
                }
            }
        }
        ModelNode[] modelNodeArr = modelNode.children;
        if (modelNodeArr != null) {
            for (ModelNode modelNode2 : modelNodeArr) {
                node.addChild(m24170g(modelNode2));
            }
        }
        return node;
    }

    public Animation getAnimation(String str, boolean z) {
        int i = this.animations.size;
        int i2 = 0;
        if (z) {
            while (i2 < i) {
                Animation animation = this.animations.get(i2);
                if (animation.f4485id.equalsIgnoreCase(str)) {
                    return animation;
                }
                i2++;
            }
            return null;
        }
        while (i2 < i) {
            Animation animation2 = this.animations.get(i2);
            if (animation2.f4485id.equals(str)) {
                return animation2;
            }
            i2++;
        }
        return null;
    }

    public Material getMaterial(String str, boolean z) {
        int i = this.materials.size;
        int i2 = 0;
        if (z) {
            while (i2 < i) {
                Material material = this.materials.get(i2);
                if (material.f4367id.equalsIgnoreCase(str)) {
                    return material;
                }
                i2++;
            }
            return null;
        }
        while (i2 < i) {
            Material material2 = this.materials.get(i2);
            if (material2.f4367id.equals(str)) {
                return material2;
            }
            i2++;
        }
        return null;
    }

    public Node getNode(String str, boolean z) {
        return getNode(str, z, false);
    }

    /* renamed from: h */
    public void m24169h(Iterable<ModelNode> iterable) {
        this.f4369b.clear();
        for (ModelNode modelNode : iterable) {
            this.nodes.add(m24170g(modelNode));
        }
        ObjectMap.Entries<NodePart, ArrayMap<String, Matrix4>> it = this.f4369b.entries().iterator();
        while (it.hasNext()) {
            ObjectMap.Entry next = it.next();
            K k = next.key;
            if (((NodePart) k).invBoneBindTransforms == null) {
                ((NodePart) k).invBoneBindTransforms = new ArrayMap<>(Node.class, Matrix4.class);
            }
            ((NodePart) next.key).invBoneBindTransforms.clear();
            Iterator it2 = ((ArrayMap) next.value).entries().iterator();
            while (it2.hasNext()) {
                ObjectMap.Entry entry = (ObjectMap.Entry) it2.next();
                ((NodePart) next.key).invBoneBindTransforms.put(getNode((String) entry.key), new Matrix4((Matrix4) entry.value).inv());
            }
        }
    }

    public BoundingBox calculateBoundingBox(BoundingBox boundingBox) {
        boundingBox.inf();
        return extendBoundingBox(boundingBox);
    }

    /* renamed from: d */
    public void m24173d(Iterable<ModelAnimation> iterable) {
        Array<NodeKeyframe<Quaternion>> array;
        Array<NodeKeyframe<Vector3>> array2;
        Vector3 vector3;
        Quaternion quaternion;
        Vector3 vector32;
        for (ModelAnimation modelAnimation : iterable) {
            Animation animation = new Animation();
            animation.f4485id = modelAnimation.f4491id;
            Array.ArrayIterator<ModelNodeAnimation> it = modelAnimation.nodeAnimations.iterator();
            while (it.hasNext()) {
                ModelNodeAnimation next = it.next();
                Node node = getNode(next.nodeId);
                if (node != null) {
                    NodeAnimation nodeAnimation = new NodeAnimation();
                    nodeAnimation.node = node;
                    if (next.translation != null) {
                        Array<NodeKeyframe<Vector3>> array3 = new Array<>();
                        nodeAnimation.translation = array3;
                        array3.ensureCapacity(next.translation.size);
                        Array.ArrayIterator<ModelNodeKeyframe<Vector3>> it2 = next.translation.iterator();
                        while (it2.hasNext()) {
                            ModelNodeKeyframe<Vector3> next2 = it2.next();
                            float f = next2.keytime;
                            if (f > animation.duration) {
                                animation.duration = f;
                            }
                            Array<NodeKeyframe<Vector3>> array4 = nodeAnimation.translation;
                            Vector3 vector33 = next2.value;
                            if (vector33 == null) {
                                vector32 = node.translation;
                            } else {
                                vector32 = vector33;
                            }
                            array4.add(new NodeKeyframe<>(f, new Vector3(vector32)));
                        }
                    }
                    if (next.rotation != null) {
                        Array<NodeKeyframe<Quaternion>> array5 = new Array<>();
                        nodeAnimation.rotation = array5;
                        array5.ensureCapacity(next.rotation.size);
                        Array.ArrayIterator<ModelNodeKeyframe<Quaternion>> it3 = next.rotation.iterator();
                        while (it3.hasNext()) {
                            ModelNodeKeyframe<Quaternion> next3 = it3.next();
                            float f2 = next3.keytime;
                            if (f2 > animation.duration) {
                                animation.duration = f2;
                            }
                            Array<NodeKeyframe<Quaternion>> array6 = nodeAnimation.rotation;
                            Quaternion quaternion2 = next3.value;
                            if (quaternion2 == null) {
                                quaternion = node.rotation;
                            } else {
                                quaternion = quaternion2;
                            }
                            array6.add(new NodeKeyframe<>(f2, new Quaternion(quaternion)));
                        }
                    }
                    if (next.scaling != null) {
                        Array<NodeKeyframe<Vector3>> array7 = new Array<>();
                        nodeAnimation.scaling = array7;
                        array7.ensureCapacity(next.scaling.size);
                        Array.ArrayIterator<ModelNodeKeyframe<Vector3>> it4 = next.scaling.iterator();
                        while (it4.hasNext()) {
                            ModelNodeKeyframe<Vector3> next4 = it4.next();
                            float f3 = next4.keytime;
                            if (f3 > animation.duration) {
                                animation.duration = f3;
                            }
                            Array<NodeKeyframe<Vector3>> array8 = nodeAnimation.scaling;
                            Vector3 vector34 = next4.value;
                            if (vector34 == null) {
                                vector3 = node.scale;
                            } else {
                                vector3 = vector34;
                            }
                            array8.add(new NodeKeyframe<>(f3, new Vector3(vector3)));
                        }
                    }
                    Array<NodeKeyframe<Vector3>> array9 = nodeAnimation.translation;
                    if ((array9 != null && array9.size > 0) || (((array = nodeAnimation.rotation) != null && array.size > 0) || ((array2 = nodeAnimation.scaling) != null && array2.size > 0))) {
                        animation.nodeAnimations.add(nodeAnimation);
                    }
                }
            }
            if (animation.nodeAnimations.size > 0) {
                this.animations.add(animation);
            }
        }
    }

    /* renamed from: e */
    public void m24172e(Iterable<ModelMaterial> iterable, TextureProvider textureProvider) {
        for (ModelMaterial modelMaterial : iterable) {
            this.materials.add(m24176a(modelMaterial, textureProvider));
        }
    }

    /* renamed from: f */
    public void m24171f(Iterable<ModelMesh> iterable) {
        for (ModelMesh modelMesh : iterable) {
            m24175b(modelMesh);
        }
    }

    public Node getNode(String str, boolean z, boolean z2) {
        return Node.getNode(this.nodes, str, z, z2);
    }

    public Model(ModelData modelData) {
        this(modelData, new TextureProvider.FileTextureProvider());
    }

    public Model(ModelData modelData, TextureProvider textureProvider) {
        this.materials = new Array<>();
        this.nodes = new Array<>();
        this.animations = new Array<>();
        this.meshes = new Array<>();
        this.meshParts = new Array<>();
        this.f4368a = new Array<>();
        this.f4369b = new ObjectMap<>();
        m24174c(modelData, textureProvider);
    }
}
