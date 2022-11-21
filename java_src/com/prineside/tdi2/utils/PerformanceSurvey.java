package com.prineside.tdi2.utils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Net;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GL30;
import com.badlogic.gdx.net.HttpParametersUtils;
import com.badlogic.gdx.net.HttpStatus;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Json;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.reflectasm.FieldAccess;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.managers.SettingsManager;
import com.prineside.tdi2.utils.PerformanceSurvey;
import java.io.PrintStream;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class PerformanceSurvey {

    /* renamed from: a */
    public static boolean f15116a;

    /* renamed from: b */
    public static Json f15117b;

    /* renamed from: c */
    public static StringWriter f15118c;
    public static String currentAction;

    /* renamed from: d */
    public static String f15119d;

    /* renamed from: e */
    public static PerformanceSurveyListener f15120e;

    /* renamed from: f */
    public static final byte[] f15121f;

    /* renamed from: g */
    public static final int[] f15122g;
    public static final GlCapability[] glCapabilitiesList = {new GlCapability(GL20.GL_MAX_TEXTURE_SIZE, "GL_MAX_TEXTURE_SIZE", 0), new GlCapability(GL20.GL_MAX_VIEWPORT_DIMS, "GL_MAX_VIEWPORT_DIMS", 1), new GlCapability(GL20.GL_SUBPIXEL_BITS, "GL_SUBPIXEL_BITS", 0), new GlCapability(GL30.GL_MAX_3D_TEXTURE_SIZE, "GL_MAX_3D_TEXTURE_SIZE", 0), new GlCapability(GL20.GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS, "GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS", 0), new GlCapability(GL20.GL_MAX_CUBE_MAP_TEXTURE_SIZE, "GL_MAX_CUBE_MAP_TEXTURE_SIZE", 0), new GlCapability(GL30.GL_MAX_DRAW_BUFFERS, "GL_MAX_DRAW_BUFFERS", 0), new GlCapability(GL30.GL_MAX_ELEMENTS_INDICES, "GL_MAX_ELEMENTS_INDICES", 0), new GlCapability(GL30.GL_MAX_ELEMENTS_VERTICES, "GL_MAX_ELEMENTS_VERTICES", 0), new GlCapability(GL20.GL_MAX_VERTEX_ATTRIBS, "GL_MAX_VERTEX_ATTRIBS", 0), new GlCapability(GL20.GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS, "GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS", 0), new GlCapability(GL20.GL_MAX_TEXTURE_IMAGE_UNITS, "GL_MAX_TEXTURE_IMAGE_UNITS", 0), new GlCapability(GL30.GL_MAX_TEXTURE_LOD_BIAS, "GL_MAX_TEXTURE_LOD_BIAS", 0), new GlCapability(GL30.GL_MAX_VERTEX_UNIFORM_COMPONENTS, "GL_MAX_VERTEX_UNIFORM_COMPONENTS", 0), new GlCapability(GL30.GL_MAX_FRAGMENT_UNIFORM_COMPONENTS, "GL_MAX_FRAGMENT_UNIFORM_COMPONENTS", 0), new GlCapability(3378, "GL_MAX_CLIP_PLANES", 0), new GlCapability(GL30.GL_MAX_ARRAY_TEXTURE_LAYERS, "GL_MAX_ARRAY_TEXTURE_LAYERS", 0), new GlCapability(GL30.GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS, "GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS", 0), new GlCapability(GL30.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS, "GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS", 0), new GlCapability(GL30.GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS, "GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS", 0), new GlCapability(GL30.GL_MAX_PROGRAM_TEXEL_OFFSET, "GL_MAX_PROGRAM_TEXEL_OFFSET", 0), new GlCapability(GL30.GL_MIN_PROGRAM_TEXEL_OFFSET, "GL_MIN_PROGRAM_TEXEL_OFFSET", 0), new GlCapability(36282, "GL_FRAMEBUFFER_SRGB_CAPABLE", 0), new GlCapability(GL30.GL_MAX_VARYING_COMPONENTS, "GL_MAX_VARYING_FLOATS", 0), new GlCapability(36441, "GL_MAX_SAMPLE_MASK_WORDS", 0), new GlCapability(35883, "GL_MAX_TEXTURE_BUFFER_SIZE", 0), new GlCapability(37134, "GL_MAX_COLOR_TEXTURE_SAMPLES", 0), new GlCapability(37135, "GL_MAX_DEPTH_TEXTURE_SAMPLES", 0), new GlCapability(37136, "GL_MAX_INTEGER_SAMPLES", 0), new GlCapability(34929, "GL_MAX_TEXTURE_COORDS", 0), new GlCapability(36447, "GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET", 0), new GlCapability(36446, "GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET", 0), new GlCapability(GL30.GL_MAX_VERTEX_OUTPUT_COMPONENTS, "GL_MAX_VERTEX_OUTPUT_COMPONENTS", 0), new GlCapability(GL30.GL_MAX_FRAGMENT_INPUT_COMPONENTS, "GL_MAX_FRAGMENT_INPUT_COMPONENTS", 0), new GlCapability(36320, "GL_MAX_GEOMETRY_OUTPUT_VERTICES", 0), new GlCapability(35881, "GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS", 0), new GlCapability(36321, "GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS", 0), new GlCapability(37155, "GL_MAX_GEOMETRY_INPUT_COMPONENTS", 0), new GlCapability(37156, "GL_MAX_GEOMETRY_OUTPUT_COMPONENTS", 0), new GlCapability(34040, "GL_MAX_RECTANGLE_TEXTURE_SIZE", 0), new GlCapability(36442, "GL_MAX_GEOMETRY_SHADER_INVOCATIONS", 0), new GlCapability(GL30.GL_MAJOR_VERSION, "GL_MAJOR_VERSION", 0), new GlCapability(GL30.GL_MINOR_VERSION, "GL_MINOR_VERSION", 0), new GlCapability(GL20.GL_MAX_TEXTURE_UNITS, "GL_MAX_TEXTURE_UNITS", 0), new GlCapability(3382, "GL_MAX_MODELVIEW_STACK_DEPTH", 0), new GlCapability(3384, "GL_MAX_PROJECTION_STACK_DEPTH", 0), new GlCapability(35895, "GL_MIN_SAMPLE_SHADING_VALUE", 0), new GlCapability(GL30.GL_MAX_COLOR_ATTACHMENTS, "GL_MAX_COLOR_ATTACHMENTS", 0), new GlCapability(GL20.GL_MAX_RENDERBUFFER_SIZE, "GL_MAX_RENDERBUFFER_SIZE", 0), new GlCapability(GL30.GL_MAX_SAMPLES, "GL_MAX_SAMPLES", 0), new GlCapability(GL30.GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS, "GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS", 0), new GlCapability(GL30.GL_MAX_COMBINED_UNIFORM_BLOCKS, "GL_MAX_COMBINED_UNIFORM_BLOCKS", 0), new GlCapability(GL30.GL_MAX_FRAGMENT_UNIFORM_BLOCKS, "GL_MAX_FRAGMENT_UNIFORM_BLOCKS", 0), new GlCapability(GL30.GL_MAX_UNIFORM_BLOCK_SIZE, "GL_MAX_UNIFORM_BLOCK_SIZE", 0), new GlCapability(GL30.GL_MAX_UNIFORM_BUFFER_BINDINGS, "GL_MAX_UNIFORM_BUFFER_BINDINGS", 0), new GlCapability(GL30.GL_MAX_VERTEX_UNIFORM_BLOCKS, "GL_MAX_VERTEX_UNIFORM_BLOCKS", 0), new GlCapability(GL30.GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT, "GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT", 0), new GlCapability(GL20.GL_MAX_VARYING_VECTORS, "GL_MAX_VARYING_VECTORS", 0), new GlCapability(GL20.GL_MAX_FRAGMENT_UNIFORM_VECTORS, "GL_MAX_FRAGMENT_UNIFORM_VECTORS", 0), new GlCapability(GL20.GL_MAX_VERTEX_UNIFORM_VECTORS, "GL_MAX_VERTEX_UNIFORM_VECTORS", 0), new GlCapability(3377, "GL_MAX_LIGHTS", 0), new GlCapability(3385, "GL_MAX_TEXTURE_STACK_DEPTH", 0), new GlCapability(36464, "GL_MAX_TRANSFORM_FEEDBACK_BUFFERS", 0), new GlCapability(2865, "GL_MAX_LIST_NESTING", 0), new GlCapability(36444, "GL_MAX_FRAGMENT_INTERPOLATION_OFFSET", 0), new GlCapability(36443, "GL_MIN_FRAGMENT_INTERPOLATION_OFFSET", 0), new GlCapability(36319, "GL_MAX_GEOMETRY_UNIFORM_COMPONENTS", 0), new GlCapability(3381, "GL_MAX_ATTRIB_STACK_DEPTH", 0), new GlCapability(35378, "GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS", 0), new GlCapability(GL20.GL_SHADER_COMPILER, "GL_SHADER_COMPILER", 3), new GlCapability(GL30.GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS, "GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS", 0), new GlCapability(35372, "GL_MAX_GEOMETRY_UNIFORM_BLOCKS", 0), new GlCapability(36328, "GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS", 0), new GlCapability(36327, "GL_MAX_SUBROUTINES", 0), new GlCapability(36382, "GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS", 0), new GlCapability(36383, "GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS", 0), new GlCapability(36477, "GL_MAX_PATCH_VERTICES", 0), new GlCapability(34924, "GL_MAX_TESS_CONTROL_INPUT_COMPONENTS", 0), new GlCapability(36483, "GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS", 0), new GlCapability(36481, "GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS", 0), new GlCapability(36485, "GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS", 0), new GlCapability(36489, "GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS", 0), new GlCapability(36479, "GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS", 0), new GlCapability(34925, "GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS", 0), new GlCapability(36486, "GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS", 0), new GlCapability(36482, "GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS", 0), new GlCapability(36490, "GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS", 0), new GlCapability(36478, "GL_MAX_TESS_GEN_LEVEL", 0), new GlCapability(36484, "GL_MAX_TESS_PATCH_COMPONENTS", 0), new GlCapability(36465, "GL_MAX_VERTEX_STREAMS", 0), new GlCapability(GL30.GL_MAX_SERVER_WAIT_TIMEOUT, "GL_MAX_SERVER_WAIT_TIMEOUT", 0), new GlCapability(35068, "GL_MAX_DUAL_SOURCE_DRAW_BUFFERS", 0), new GlCapability(GL20.GL_NUM_SHADER_BINARY_FORMATS, "GL_NUM_SHADER_BINARY_FORMATS", 0), new GlCapability(GL30.GL_NUM_PROGRAM_BINARY_FORMATS, "GL_NUM_PROGRAM_BINARY_FORMATS", 0), new GlCapability(37052, "GL_MIN_MAP_BUFFER_ALIGNMENT", 0), new GlCapability(33388, "GL_MAX_DEBUG_GROUP_STACK_DEPTH", 0), new GlCapability(37188, "GL_MAX_DEBUG_LOGGED_MESSAGES", 0), new GlCapability(37187, "GL_MAX_DEBUG_MESSAGE_LENGTH", 0), new GlCapability(33512, "GL_MAX_LABEL_LENGTH", 0), new GlCapability(GL30.GL_MAX_ELEMENT_INDEX, "GL_MAX_ELEMENT_INDEX", 0), new GlCapability(33498, "GL_MAX_VERTEX_ATTRIB_BINDINGS", 0), new GlCapability(33497, "GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET", 0), new GlCapability(36767, "GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS", 0), new GlCapability(33390, "GL_MAX_UNIFORM_LOCATIONS", 0), new GlCapability(37654, "GL_MAX_FRAMEBUFFER_HEIGHT", 0), new GlCapability(37655, "GL_MAX_FRAMEBUFFER_LAYERS", 0), new GlCapability(37656, "GL_MAX_FRAMEBUFFER_SAMPLES", 0), new GlCapability(37653, "GL_MAX_FRAMEBUFFER_WIDTH", 0), new GlCapability(37596, "GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS", 0), new GlCapability(37592, "GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE", 0), new GlCapability(37585, "GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS", 0), new GlCapability(37591, "GL_MAX_COMBINED_ATOMIC_COUNTERS", 0), new GlCapability(37584, "GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS", 0), new GlCapability(37590, "GL_MAX_FRAGMENT_ATOMIC_COUNTERS", 0), new GlCapability(37580, "GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS", 0), new GlCapability(37586, "GL_MAX_VERTEX_ATOMIC_COUNTERS", 0), new GlCapability(36664, "GL_MAX_IMAGE_UNITS", 0), new GlCapability(36973, "GL_MAX_IMAGE_SAMPLES", 0), new GlCapability(36480, "GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS", 0), new GlCapability(37071, "GL_MAX_COMBINED_IMAGE_UNIFORMS", 0), new GlCapability(37070, "GL_MAX_FRAGMENT_IMAGE_UNIFORMS", 0), new GlCapability(37066, "GL_MAX_VERTEX_IMAGE_UNIFORMS", 0), new GlCapability(36665, "GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES", 0), new GlCapability(33529, "GL_MAX_CULL_DISTANCES", 0), new GlCapability(33530, "GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES", 0), new GlCapability(37084, "GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS", 0), new GlCapability(37083, "GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS", 0), new GlCapability(37082, "GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS", 0), new GlCapability(37086, "GL_MAX_SHADER_STORAGE_BLOCK_SIZE", 0), new GlCapability(37085, "GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS", 0), new GlCapability(37078, "GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS", 0), new GlCapability(33382, "GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS", 0), new GlCapability(33380, "GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS", 0), new GlCapability(33381, "GL_MAX_COMPUTE_ATOMIC_COUNTERS", 0), new GlCapability(37309, "GL_MAX_COMPUTE_IMAGE_UNIFORMS", 0), new GlCapability(33378, "GL_MAX_COMPUTE_SHARED_MEMORY_SIZE", 0), new GlCapability(37308, "GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS", 0), new GlCapability(37307, "GL_MAX_COMPUTE_UNIFORM_BLOCKS", 0), new GlCapability(33379, "GL_MAX_COMPUTE_UNIFORM_COMPONENTS", 2), new GlCapability(37310, "GL_MAX_COMPUTE_WORK_GROUP_COUNT", 2), new GlCapability(37099, "GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS", 0), new GlCapability(37311, "GL_MAX_COMPUTE_WORK_GROUP_SIZE", 2), new GlCapability(33371, "GL_MAX_VIEWPORTS", 0), new GlCapability(37087, "GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT", 0), new GlCapability(37279, "GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT", 0), new GlCapability(37080, "GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS", 0), new GlCapability(37081, "GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS", 0), new GlCapability(34993, "GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB", 0), new GlCapability(34827, "GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB", 0), new GlCapability(34989, "GL_MAX_PROGRAM_ATTRIBS_ARB", 0), new GlCapability(34997, "GL_MAX_PROGRAM_ENV_PARAMETERS_ARB", 0), new GlCapability(34977, "GL_MAX_PROGRAM_INSTRUCTIONS_ARB", 0), new GlCapability(34996, "GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB", 0), new GlCapability(34995, "GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB", 0), new GlCapability(34830, "GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB", 0), new GlCapability(34991, "GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB", 0), new GlCapability(34979, "GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB", 0), new GlCapability(34987, "GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB", 0), new GlCapability(34983, "GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB", 0), new GlCapability(34832, "GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB", 0), new GlCapability(34831, "GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB", 0), new GlCapability(34985, "GL_MAX_PROGRAM_PARAMETERS_ARB", 0), new GlCapability(34981, "GL_MAX_PROGRAM_TEMPORARIES_ARB", 0), new GlCapability(34829, "GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB", 0), new GlCapability(34828, "GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB", 0), new GlCapability(GL20.GL_NUM_COMPRESSED_TEXTURE_FORMATS, "GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB", 0), new GlCapability(34351, "GL_MAX_PROGRAM_MATRICES_ARB", 0), new GlCapability(34350, "GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB", 0), new GlCapability(33513, "GL_NUM_SHADING_LANGUAGE_VERSIONS", 0), new GlCapability(37583, "GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS", 0), new GlCapability(37589, "GL_MAX_GEOMETRY_ATOMIC_COUNTERS", 0), new GlCapability(37581, "GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS", 0), new GlCapability(37587, "GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS", 0), new GlCapability(37582, "GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS", 0), new GlCapability(37588, "GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS", 0), new GlCapability(33509, "GL_MAX_VERTEX_ATTRIB_STRIDE", 0), new GlCapability(37069, "GL_MAX_GEOMETRY_IMAGE_UNIFORMS", 0), new GlCapability(37079, "GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS", 0), new GlCapability(37067, "GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS", 0), new GlCapability(37068, "GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS", 0), new GlCapability(32947, "GL_MAX_COLOR_MATRIX_STACK_DEPTH", 0), new GlCapability(36317, "GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB", 0), new GlCapability(36318, "GL_MAX_VERTEX_VARYING_COMPONENTS_ARB", 0), new GlCapability(37273, "GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB", 0), new GlCapability(37274, "GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB", 0), new GlCapability(37272, "GL_MAX_SPARSE_TEXTURE_SIZE_ARB", 0), new GlCapability(37700, "GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB", 0), new GlCapability(37296, "GL_MAX_SHADER_COMPILER_THREADS_ARB", 0), new GlCapability(33372, "GL_VIEWPORT_SUBPIXEL_BITS", 0), new GlCapability(37701, "GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB", 0)};

    /* renamed from: h */
    public static final byte[] f15123h;

    /* loaded from: classes2.dex */
    public interface PerformanceSurveyListener {
        void failed(String str);

        void finished(String str, boolean z);
    }

    @NAGS
    /* loaded from: classes2.dex */
    public static class SomeRequest implements KryoSerializable {
        public String text;

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.text = input.readString();
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            output.writeString(this.text);
        }
    }

    /* loaded from: classes2.dex */
    public interface TestArray {
        void add(byte b);

        void add(byte[] bArr);

        void dispose();

        byte get(int i);

        void get(int i, byte[] bArr, int i2);

        void reset();

        void set(int i, byte b);

        int size();
    }

    /* loaded from: classes2.dex */
    public static class TestFieldAccessClass {

        /* renamed from: a */
        public int f15134a = 5;
        public int intVal;

        public int bar() {
            return HttpStatus.SC_OK;
        }

        public int foo(int i) {
            return this.intVal + i;
        }

        public int getIntVal() {
            return this.intVal;
        }

        public void setIntVal(int i) {
            this.intVal = i;
        }
    }

    /* renamed from: c */
    public static int m19828c(int i) {
        IntBuffer newIntBuffer = BufferUtils.newIntBuffer(1);
        Gdx.gl20.glGetIntegerv(i, newIntBuffer);
        return newIntBuffer.get();
    }

    /* renamed from: i */
    public static boolean m19822i(TestFieldAccessClass testFieldAccessClass, Field field) {
        try {
            int i = field.getInt(testFieldAccessClass) + 1;
            field.setInt(testFieldAccessClass, i);
            return field.getInt(testFieldAccessClass) == i;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: j */
    public static boolean m19821j(TestFieldAccessClass testFieldAccessClass, Method method, Method method2) {
        try {
            int intValue = ((Integer) method.invoke(testFieldAccessClass, new Object[0])).intValue() + 1;
            method2.invoke(testFieldAccessClass, Integer.valueOf(intValue));
            return ((Integer) method.invoke(testFieldAccessClass, new Object[0])).intValue() == intValue;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void stop() {
        f15116a = false;
    }

    /* loaded from: classes2.dex */
    public static final class BinaryTreesTest {

        /* loaded from: classes2.dex */
        public static final class TreeNode {

            /* renamed from: a */
            public final TreeNode f15129a;

            /* renamed from: b */
            public final TreeNode f15130b;

            /* renamed from: b */
            public final int m19816b() {
                TreeNode treeNode = this.f15129a;
                if (treeNode == null) {
                    return 1;
                }
                return treeNode.m19816b() + 1 + this.f15130b.m19816b();
            }

            public TreeNode(TreeNode treeNode, TreeNode treeNode2) {
                this.f15129a = treeNode;
                this.f15130b = treeNode2;
            }

            public TreeNode() {
                this(null, null);
            }
        }

        /* renamed from: b */
        public static TreeNode m19819b(int i) {
            if (i > 0) {
                int i2 = i - 1;
                return new TreeNode(m19819b(i2), m19819b(i2));
            }
            return new TreeNode();
        }

        /* renamed from: c */
        public static /* synthetic */ void m19818c(int i, int i2, String[] strArr) {
            int i3 = 1 << ((i - i2) + 4);
            int i4 = 0;
            for (int i5 = 1; i5 <= i3; i5++) {
                i4 += m19819b(i2).m19816b();
            }
            strArr[(i2 - 4) / 2] = i3 + "\t trees of depth " + i2 + "\t check: " + i4;
        }

        public static void run(int i) {
            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
            final int max = Math.max(i, 6);
            int i2 = max + 1;
            PrintStream printStream = System.out;
            printStream.println("stretch tree of depth " + i2 + "\t check: " + m19819b(i2).m19816b());
            TreeNode m19819b = m19819b(max);
            int i3 = ((max + (-4)) / 2) + 1;
            final String[] strArr = new String[i3];
            for (final int i4 = 4; i4 <= max; i4 += 2) {
                newFixedThreadPool.execute(new Runnable() { // from class: com.prineside.tdi2.utils.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        PerformanceSurvey.BinaryTreesTest.m19818c(max, i4, strArr);
                    }
                });
            }
            newFixedThreadPool.shutdown();
            newFixedThreadPool.awaitTermination(3L, TimeUnit.SECONDS);
            for (int i5 = 0; i5 < i3; i5++) {
                System.out.println(strArr[i5]);
            }
            PrintStream printStream2 = System.out;
            printStream2.println("long lived tree of depth " + max + "\t check: " + m19819b.m19816b());
        }
    }

    /* loaded from: classes2.dex */
    public static class GlCapability {

        /* renamed from: a */
        public int f15131a;

        /* renamed from: b */
        public int f15132b;

        /* renamed from: c */
        public String f15133c;

        public GlCapability(int i, String str, int i2) {
            this.f15131a = i;
            this.f15133c = str;
            this.f15132b = i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0aaf, code lost:
        r0 = r1;
     */
    static {
        /*
            Method dump skipped, instructions count: 2798
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.utils.PerformanceSurvey.<clinit>():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(64:2|3|(4:6|7|8|4)|9|10|11|(3:12|13|14)|(4:15|16|(2:17|(1:322)(2:19|(2:22|23)(1:21)))|24)|25|26|27|28|29|(6:31|32|(1:34)|35|36|37)|263|264|265|(5:267|(1:(2:269|(2:272|273)(1:271))(2:279|280))|(1:275)(1:278)|276|277)|282|283|284|(7:286|287|288|289|290|291|292)|299|300|301|302|303|304|305|306|307|308|43|44|(6:47|48|(2:51|49)|52|53|45)|98|99|100|(5:102|(2:103|(2:105|(2:108|109)(1:107))(2:115|116))|(1:111)(1:114)|112|113)|118|119|120|(5:123|124|125|126|121)|130|131|(39:132|133|134|(5:137|(2:140|138)|141|142|135)|143|144|145|(6:148|(1:(2:150|(2:153|154)(1:152))(2:160|161))|(1:156)(1:159)|157|158|146)|163|164|165|(4:167|168|169|170)|174|175|176|177|178|179|180|181|(10:184|185|186|187|188|(1:190)|191|192|193|182)|199|200|201|202|203|(6:206|(1:(2:208|(2:211|212)(1:210))(2:218|219))|(1:214)(1:217)|215|216|204)|221|222|223|(5:226|227|228|229|224)|233|234|235|236|237|238|239|240)|57|58|(3:60|61|62)|75|76|77|78|79|(2:81|82)|84|85|(3:87|88|89)|92|93|66|(2:67|68)|69|71) */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x06e1, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x06e2, code lost:
        r11 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x029b, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x029d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x029e, code lost:
        r5 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02a1, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02a3, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02a4, code lost:
        r33 = "error";
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02a6, code lost:
        r5 = r17;
        r4 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02aa, code lost:
        r1 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0308 A[Catch: Exception -> 0x02e5, all -> 0x071a, TRY_ENTER, TryCatch #9 {Exception -> 0x02e5, blocks: (B:91:0x02bd, B:94:0x02db, B:95:0x02e1, B:102:0x0308, B:105:0x032a, B:111:0x0338, B:113:0x0345, B:112:0x033d, B:108:0x0332), top: B:277:0x02bd }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03d9 A[Catch: Exception -> 0x0386, all -> 0x071a, TRY_ENTER, TryCatch #23 {Exception -> 0x0386, blocks: (B:120:0x0374, B:130:0x03d9, B:133:0x03f7, B:134:0x03fd, B:140:0x0423, B:142:0x0445, B:148:0x0459, B:150:0x0466, B:149:0x045e, B:145:0x044e), top: B:305:0x0374 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0423 A[Catch: Exception -> 0x0386, all -> 0x071a, TRY_ENTER, TryCatch #23 {Exception -> 0x0386, blocks: (B:120:0x0374, B:130:0x03d9, B:133:0x03f7, B:134:0x03fd, B:140:0x0423, B:142:0x0445, B:148:0x0459, B:150:0x0466, B:149:0x045e, B:145:0x044e), top: B:305:0x0374 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x053e A[Catch: Exception -> 0x050e, all -> 0x071a, TRY_ENTER, TryCatch #13 {Exception -> 0x050e, blocks: (B:169:0x04f3, B:171:0x0502, B:172:0x0508, B:183:0x053e, B:185:0x0560, B:191:0x056e, B:193:0x057d, B:192:0x0573, B:188:0x0568), top: B:285:0x04f3 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0667 A[Catch: all -> 0x065a, TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x065a, blocks: (B:229:0x062e, B:237:0x0667), top: B:303:0x062e }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x06ac  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x02bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x04e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0195 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:303:0x062e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e0 A[Catch: Exception -> 0x01bb, all -> 0x071a, TRY_ENTER, TryCatch #19 {Exception -> 0x01bb, blocks: (B:33:0x0195, B:35:0x01b0, B:36:0x01b6, B:44:0x01e0, B:46:0x01ff, B:52:0x020d, B:54:0x0218, B:53:0x0210, B:49:0x0207), top: B:297:0x0195 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0242  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m19827d(com.prineside.reflectasm.FieldAccess r38, com.prineside.tdi2.utils.PerformanceSurvey.TestFieldAccessClass r39, com.prineside.tdi2.utils.PerformanceSurvey.PerformanceSurveyListener r40) {
        /*
            Method dump skipped, instructions count: 1833
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.utils.PerformanceSurvey.m19827d(com.prineside.reflectasm.FieldAccess, com.prineside.tdi2.utils.PerformanceSurvey$TestFieldAccessClass, com.prineside.tdi2.utils.PerformanceSurvey$PerformanceSurveyListener):void");
    }

    /* renamed from: e */
    public static /* synthetic */ void m19826e() {
        boolean z;
        currentAction = "Finished";
        boolean z2 = false;
        try {
            f15116a = false;
            Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
            httpRequest.setUrl(Config.PERFORMANCE_SURVEY_REPORT_URL);
            HashMap hashMap = new HashMap();
            hashMap.put("app", "Infinitode 2");
            hashMap.put("build", "184");
            try {
                hashMap.put("user", Game.f8589i.authManager.getPlayerId());
            } catch (Exception unused) {
            }
            SettingsManager settingsManager = Game.f8589i.settingsManager;
            SettingsManager.CustomValueType customValueType = SettingsManager.CustomValueType.DBG_PERFORMANCE_SURVEY_SUBMITTED;
            if (settingsManager.getCustomValue(customValueType) != 0.0d) {
                z = true;
            } else {
                z = false;
            }
            Game.f8589i.settingsManager.setCustomValue(customValueType, 1.0d);
            Game.f8589i.settingsManager.save();
            StringWriter stringWriter = f15118c;
            if (stringWriter != null) {
                String stringWriter2 = stringWriter.toString();
                PerformanceSurveyListener performanceSurveyListener = f15120e;
                if (!z) {
                    z2 = true;
                }
                performanceSurveyListener.finished(stringWriter2, z2);
                hashMap.put("report", stringWriter2);
                Logger.log("PerformanceSurvey", stringWriter2);
            } else {
                hashMap.put("error", f15119d);
                f15120e.failed(f15119d);
                Logger.log("PerformanceSurvey", f15118c.toString());
            }
            httpRequest.setContent(HttpParametersUtils.convertHttpParameters(hashMap));
            f15117b = null;
            f15118c = null;
            if (!z) {
                Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.utils.PerformanceSurvey.3
                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void cancelled() {
                        Logger.log("PerformanceSurvey", "Canceled performance survey report");
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void failed(Throwable th) {
                        Logger.log("PerformanceSurvey", "Failed to send performance survey report", th);
                    }

                    @Override // com.badlogic.gdx.Net.HttpResponseListener
                    public void handleHttpResponse(Net.HttpResponse httpResponse) {
                        try {
                            String resultAsString = httpResponse.getResultAsString();
                            Logger.log("PerformanceSurvey", "Performance survey submit response: " + resultAsString);
                        } catch (Exception e) {
                            Logger.log("PerformanceSurvey", "Exception: " + e.getMessage(), e);
                        }
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
            f15120e.failed(e.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0402 A[Catch: all -> 0x096d, LOOP:2: B:112:0x0400->B:113:0x0402, LOOP_END, TryCatch #5 {all -> 0x096d, blocks: (B:7:0x004f, B:8:0x006d, B:10:0x0073, B:11:0x0085, B:89:0x01a5, B:91:0x01ab, B:95:0x01b5, B:13:0x008a, B:16:0x0096, B:19:0x00a1, B:22:0x00ad, B:25:0x00b9, B:28:0x00c5, B:31:0x00d1, B:34:0x00dd, B:37:0x00e8, B:40:0x00f4, B:43:0x00ff, B:46:0x010b, B:49:0x0116, B:52:0x0122, B:55:0x012e, B:58:0x0139, B:61:0x0144, B:64:0x014f, B:67:0x015a, B:70:0x0165, B:73:0x016f, B:76:0x0179, B:79:0x0184, B:82:0x018e, B:85:0x0199, B:97:0x01c6, B:98:0x01d2, B:100:0x01da, B:102:0x01eb, B:110:0x0236, B:111:0x0239, B:113:0x0402, B:114:0x0445, B:116:0x045b, B:117:0x048d, B:119:0x04ab, B:121:0x04cf, B:123:0x04d9, B:136:0x051e, B:137:0x0523, B:138:0x0530, B:139:0x053d, B:140:0x054a, B:141:0x055a, B:142:0x0569, B:147:0x0580, B:149:0x0588, B:150:0x05a7, B:152:0x05ad, B:153:0x05af, B:155:0x05b3, B:178:0x0656, B:181:0x0660, B:198:0x0751, B:183:0x0697, B:191:0x06a7, B:192:0x0701, B:193:0x073d, B:159:0x05cf, B:162:0x05f1, B:167:0x061b, B:171:0x0634, B:175:0x064d, B:197:0x074e, B:199:0x0755, B:203:0x076a, B:205:0x0773, B:224:0x07e7, B:223:0x07e0, B:225:0x07ec, B:246:0x089f, B:263:0x092e, B:269:0x0949, B:262:0x0920, B:245:0x0882, B:146:0x057d, B:124:0x04e3, B:125:0x04ea, B:128:0x04ed, B:129:0x04f0, B:131:0x04ff, B:135:0x0514, B:210:0x0792, B:214:0x07ac, B:264:0x093a, B:207:0x077c), top: B:291:0x004f, inners: #3, #15, #19, #21 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x045b A[Catch: all -> 0x096d, LOOP:3: B:115:0x0459->B:116:0x045b, LOOP_END, TryCatch #5 {all -> 0x096d, blocks: (B:7:0x004f, B:8:0x006d, B:10:0x0073, B:11:0x0085, B:89:0x01a5, B:91:0x01ab, B:95:0x01b5, B:13:0x008a, B:16:0x0096, B:19:0x00a1, B:22:0x00ad, B:25:0x00b9, B:28:0x00c5, B:31:0x00d1, B:34:0x00dd, B:37:0x00e8, B:40:0x00f4, B:43:0x00ff, B:46:0x010b, B:49:0x0116, B:52:0x0122, B:55:0x012e, B:58:0x0139, B:61:0x0144, B:64:0x014f, B:67:0x015a, B:70:0x0165, B:73:0x016f, B:76:0x0179, B:79:0x0184, B:82:0x018e, B:85:0x0199, B:97:0x01c6, B:98:0x01d2, B:100:0x01da, B:102:0x01eb, B:110:0x0236, B:111:0x0239, B:113:0x0402, B:114:0x0445, B:116:0x045b, B:117:0x048d, B:119:0x04ab, B:121:0x04cf, B:123:0x04d9, B:136:0x051e, B:137:0x0523, B:138:0x0530, B:139:0x053d, B:140:0x054a, B:141:0x055a, B:142:0x0569, B:147:0x0580, B:149:0x0588, B:150:0x05a7, B:152:0x05ad, B:153:0x05af, B:155:0x05b3, B:178:0x0656, B:181:0x0660, B:198:0x0751, B:183:0x0697, B:191:0x06a7, B:192:0x0701, B:193:0x073d, B:159:0x05cf, B:162:0x05f1, B:167:0x061b, B:171:0x0634, B:175:0x064d, B:197:0x074e, B:199:0x0755, B:203:0x076a, B:205:0x0773, B:224:0x07e7, B:223:0x07e0, B:225:0x07ec, B:246:0x089f, B:263:0x092e, B:269:0x0949, B:262:0x0920, B:245:0x0882, B:146:0x057d, B:124:0x04e3, B:125:0x04ea, B:128:0x04ed, B:129:0x04f0, B:131:0x04ff, B:135:0x0514, B:210:0x0792, B:214:0x07ac, B:264:0x093a, B:207:0x077c), top: B:291:0x004f, inners: #3, #15, #19, #21 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x04cf A[Catch: Exception -> 0x04eb, all -> 0x096d, TryCatch #3 {Exception -> 0x04eb, blocks: (B:119:0x04ab, B:121:0x04cf, B:123:0x04d9, B:124:0x04e3, B:125:0x04ea), top: B:288:0x04ab, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x04e3 A[Catch: Exception -> 0x04eb, all -> 0x096d, TryCatch #3 {Exception -> 0x04eb, blocks: (B:119:0x04ab, B:121:0x04cf, B:123:0x04d9, B:124:0x04e3, B:125:0x04ea), top: B:288:0x04ab, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x065e A[LOOP:7: B:180:0x065e->B:181:0x0660, LOOP_START, PHI: r8 
      PHI: (r8v24 int) = (r8v16 int), (r8v30 int) binds: [B:179:0x065c, B:181:0x0660] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0834 A[Catch: all -> 0x087e, TRY_ENTER, TryCatch #13 {all -> 0x087e, blocks: (B:226:0x07f3, B:233:0x0840, B:235:0x0855, B:232:0x0834), top: B:305:0x07f3 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0855 A[Catch: all -> 0x087e, TRY_LEAVE, TryCatch #13 {all -> 0x087e, blocks: (B:226:0x07f3, B:233:0x0840, B:235:0x0855, B:232:0x0834), top: B:305:0x07f3 }] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x085f A[Catch: all -> 0x087c, TRY_LEAVE, TryCatch #12 {all -> 0x087c, blocks: (B:237:0x085b, B:238:0x085f), top: B:303:0x0853 }] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x08d5  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x08d7  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x090f  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0911  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0822 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void execute(com.prineside.tdi2.utils.PerformanceSurvey.PerformanceSurveyListener r24) {
        /*
            Method dump skipped, instructions count: 2616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.utils.PerformanceSurvey.execute(com.prineside.tdi2.utils.PerformanceSurvey$PerformanceSurveyListener):void");
    }

    /* renamed from: f */
    public static void m19825f() {
        if (f15116a) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.prineside.tdi2.utils.c
                @Override // java.lang.Runnable
                public final void run() {
                    PerformanceSurvey.m19826e();
                }
            });
        }
    }

    /* renamed from: g */
    public static boolean m19824g(TestFieldAccessClass testFieldAccessClass) {
        testFieldAccessClass.intVal++;
        return true;
    }

    public static void runIfSurveysAccepting(final Runnable runnable) {
        Net.HttpRequest httpRequest = new Net.HttpRequest(Net.HttpMethods.POST);
        httpRequest.setUrl(Config.PERFORMANCE_SURVEY_STATUS_URL);
        Gdx.f38302net.sendHttpRequest(httpRequest, new Net.HttpResponseListener() { // from class: com.prineside.tdi2.utils.PerformanceSurvey.2
            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void cancelled() {
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void failed(Throwable th) {
            }

            @Override // com.badlogic.gdx.Net.HttpResponseListener
            public void handleHttpResponse(Net.HttpResponse httpResponse) {
                try {
                    if ("collecting".equals(httpResponse.getResultAsString())) {
                        Gdx.app.postRunnable(runnable);
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    /* renamed from: h */
    public static boolean m19823h(TestFieldAccessClass testFieldAccessClass, FieldAccess fieldAccess, int i) {
        int i2 = fieldAccess.getInt(testFieldAccessClass, i) + 1;
        fieldAccess.setInt(testFieldAccessClass, i, i2);
        if (fieldAccess.getInt(testFieldAccessClass, i) == i2) {
            return true;
        }
        return false;
    }
}
