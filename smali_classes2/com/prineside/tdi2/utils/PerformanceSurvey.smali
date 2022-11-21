.class public Lcom/prineside/tdi2/utils/PerformanceSurvey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;,
        Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;,
        Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;,
        Lcom/prineside/tdi2/utils/PerformanceSurvey$TestArray;,
        Lcom/prineside/tdi2/utils/PerformanceSurvey$SomeRequest;,
        Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Lcom/badlogic/gdx/utils/Json;

.field public static c:Ljava/io/StringWriter;

.field public static currentAction:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;

.field public static final f:[B

.field public static final g:[I

.field public static final glCapabilitiesList:[Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

.field public static final h:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xbe

    new-array v0, v0, [Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v2, 0xd33

    const-string v3, "GL_MAX_TEXTURE_SIZE"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v2, 0xd3a

    const-string v3, "GL_MAX_VIEWPORT_DIMS"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v2, 0xd50

    const-string v3, "GL_SUBPIXEL_BITS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8073

    const-string v5, "GL_MAX_3D_TEXTURE_SIZE"

    invoke-direct {v1, v3, v5, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8b4d

    const-string v6, "GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x851c

    const-string v6, "GL_MAX_CUBE_MAP_TEXTURE_SIZE"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8824

    const-string v6, "GL_MAX_DRAW_BUFFERS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/4 v5, 0x6

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x80e9

    const-string v6, "GL_MAX_ELEMENTS_INDICES"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/4 v5, 0x7

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x80e8

    const-string v6, "GL_MAX_ELEMENTS_VERTICES"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8869

    const-string v6, "GL_MAX_VERTEX_ATTRIBS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x9

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8b4c

    const-string v6, "GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0xa

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8872

    const-string v6, "GL_MAX_TEXTURE_IMAGE_UNITS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0xb

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x84fd

    const-string v6, "GL_MAX_TEXTURE_LOD_BIAS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0xc

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8b4a

    const-string v6, "GL_MAX_VERTEX_UNIFORM_COMPONENTS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0xd

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8b49

    const-string v6, "GL_MAX_FRAGMENT_UNIFORM_COMPONENTS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0xe

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v5, 0xd32

    const-string v6, "GL_MAX_CLIP_PLANES"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0xf

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x88ff

    const-string v6, "GL_MAX_ARRAY_TEXTURE_LAYERS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x10

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8c8a

    const-string v6, "GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x11

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8c8b

    const-string v6, "GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x12

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8c80

    const-string v6, "GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x13

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8905

    const-string v6, "GL_MAX_PROGRAM_TEXEL_OFFSET"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x14

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8904

    const-string v6, "GL_MIN_PROGRAM_TEXEL_OFFSET"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x15

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8dba

    const-string v6, "GL_FRAMEBUFFER_SRGB_CAPABLE"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x16

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8b4b

    const-string v6, "GL_MAX_VARYING_FLOATS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x17

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8e59

    const-string v6, "GL_MAX_SAMPLE_MASK_WORDS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x18

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8c2b

    const-string v6, "GL_MAX_TEXTURE_BUFFER_SIZE"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x19

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x910e

    const-string v6, "GL_MAX_COLOR_TEXTURE_SAMPLES"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x910f

    const-string v6, "GL_MAX_DEPTH_TEXTURE_SAMPLES"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x1b

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x9110

    const-string v6, "GL_MAX_INTEGER_SAMPLES"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x1c

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8871

    const-string v6, "GL_MAX_TEXTURE_COORDS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x1d

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8e5f

    const-string v6, "GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x1e

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x8e5e

    const-string v6, "GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x1f

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v5, 0x9122

    const-string v6, "GL_MAX_VERTEX_OUTPUT_COMPONENTS"

    invoke-direct {v1, v5, v6, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v5, 0x20

    aput-object v1, v0, v5

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x9125

    const-string v7, "GL_MAX_FRAGMENT_INPUT_COMPONENTS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x21

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8de0

    const-string v7, "GL_MAX_GEOMETRY_OUTPUT_VERTICES"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x22

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8c29

    const-string v7, "GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x23

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8de1

    const-string v7, "GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x24

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x9123

    const-string v7, "GL_MAX_GEOMETRY_INPUT_COMPONENTS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x25

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x9124

    const-string v7, "GL_MAX_GEOMETRY_OUTPUT_COMPONENTS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x26

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x84f8

    const-string v7, "GL_MAX_RECTANGLE_TEXTURE_SIZE"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x27

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8e5a

    const-string v7, "GL_MAX_GEOMETRY_SHADER_INVOCATIONS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x28

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x821b

    const-string v7, "GL_MAJOR_VERSION"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x29

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x821c

    const-string v7, "GL_MINOR_VERSION"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x2a

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x84e2

    const-string v7, "GL_MAX_TEXTURE_UNITS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x2b

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v6, 0xd36

    const-string v7, "GL_MAX_MODELVIEW_STACK_DEPTH"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x2c

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v6, 0xd38

    const-string v7, "GL_MAX_PROJECTION_STACK_DEPTH"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x2d

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8c37

    const-string v7, "GL_MIN_SAMPLE_SHADING_VALUE"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x2e

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8cdf

    const-string v7, "GL_MAX_COLOR_ATTACHMENTS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x2f

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x84e8

    const-string v7, "GL_MAX_RENDERBUFFER_SIZE"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x30

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8d57

    const-string v7, "GL_MAX_SAMPLES"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x31

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8a33

    const-string v7, "GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x32

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8a2e

    const-string v7, "GL_MAX_COMBINED_UNIFORM_BLOCKS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x33

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8a2d

    const-string v7, "GL_MAX_FRAGMENT_UNIFORM_BLOCKS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x34

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8a30

    const-string v7, "GL_MAX_UNIFORM_BLOCK_SIZE"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x35

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8a2f

    const-string v7, "GL_MAX_UNIFORM_BUFFER_BINDINGS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x36

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8a2b

    const-string v7, "GL_MAX_VERTEX_UNIFORM_BLOCKS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x37

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8a34

    const-string v7, "GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x38

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8dfc

    const-string v7, "GL_MAX_VARYING_VECTORS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x39

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8dfd

    const-string v7, "GL_MAX_FRAGMENT_UNIFORM_VECTORS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x3a

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8dfb

    const-string v7, "GL_MAX_VERTEX_UNIFORM_VECTORS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x3b

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v6, 0xd31

    const-string v7, "GL_MAX_LIGHTS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x3c

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v6, 0xd39

    const-string v7, "GL_MAX_TEXTURE_STACK_DEPTH"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x3d

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8e70

    const-string v7, "GL_MAX_TRANSFORM_FEEDBACK_BUFFERS"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x3e

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v6, 0xb31

    const-string v7, "GL_MAX_LIST_NESTING"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x3f

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v6, 0x8e5c

    const-string v7, "GL_MAX_FRAGMENT_INTERPOLATION_OFFSET"

    invoke-direct {v1, v6, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v6, 0x40

    aput-object v1, v0, v6

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v7, 0x8e5b

    const-string v8, "GL_MIN_FRAGMENT_INTERPOLATION_OFFSET"

    invoke-direct {v1, v7, v8, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v7, 0x41

    aput-object v1, v0, v7

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v7, 0x8ddf

    const-string v8, "GL_MAX_GEOMETRY_UNIFORM_COMPONENTS"

    invoke-direct {v1, v7, v8, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v7, 0x42

    aput-object v1, v0, v7

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/16 v7, 0xd35

    const-string v8, "GL_MAX_ATTRIB_STACK_DEPTH"

    invoke-direct {v1, v7, v8, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v7, 0x43

    aput-object v1, v0, v7

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v7, 0x8a32

    const-string v8, "GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS"

    invoke-direct {v1, v7, v8, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v7, 0x44

    aput-object v1, v0, v7

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v7, 0x8dfa

    const-string v8, "GL_SHADER_COMPILER"

    invoke-direct {v1, v7, v8, v3}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x45

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8a31

    const-string v7, "GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x46

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8a2c

    const-string v7, "GL_MAX_GEOMETRY_UNIFORM_BLOCKS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x47

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8de8

    const-string v7, "GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x48

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8de7

    const-string v7, "GL_MAX_SUBROUTINES"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x49

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e1e

    const-string v7, "GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x4a

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e1f

    const-string v7, "GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x4b

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e7d

    const-string v7, "GL_MAX_PATCH_VERTICES"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x4c

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x886c

    const-string v7, "GL_MAX_TESS_CONTROL_INPUT_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x4d

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e83

    const-string v7, "GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x4e

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e81

    const-string v7, "GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x4f

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e85

    const-string v7, "GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x50

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e89

    const-string v7, "GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x51

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e7f

    const-string v7, "GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x52

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x886d

    const-string v7, "GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x53

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e86

    const-string v7, "GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x54

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e82

    const-string v7, "GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x55

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e8a

    const-string v7, "GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x56

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e7e

    const-string v7, "GL_MAX_TESS_GEN_LEVEL"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x57

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e84

    const-string v7, "GL_MAX_TESS_PATCH_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x58

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e71

    const-string v7, "GL_MAX_VERTEX_STREAMS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x59

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x9111

    const-string v7, "GL_MAX_SERVER_WAIT_TIMEOUT"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x5a

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x88fc

    const-string v7, "GL_MAX_DUAL_SOURCE_DRAW_BUFFERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x5b

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8df9

    const-string v7, "GL_NUM_SHADER_BINARY_FORMATS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x5c

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x87fe

    const-string v7, "GL_NUM_PROGRAM_BINARY_FORMATS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x5d

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90bc

    const-string v7, "GL_MIN_MAP_BUFFER_ALIGNMENT"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x5e

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x826c

    const-string v7, "GL_MAX_DEBUG_GROUP_STACK_DEPTH"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x5f

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x9144

    const-string v7, "GL_MAX_DEBUG_LOGGED_MESSAGES"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x60

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x9143

    const-string v7, "GL_MAX_DEBUG_MESSAGE_LENGTH"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x61

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x82e8

    const-string v7, "GL_MAX_LABEL_LENGTH"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x62

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8d6b

    const-string v7, "GL_MAX_ELEMENT_INDEX"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x63

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x82da

    const-string v7, "GL_MAX_VERTEX_ATTRIB_BINDINGS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x64

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x82d9

    const-string v7, "GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x65

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8f9f

    const-string v7, "GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x66

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x826e

    const-string v7, "GL_MAX_UNIFORM_LOCATIONS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x67

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x9316

    const-string v7, "GL_MAX_FRAMEBUFFER_HEIGHT"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x68

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x9317

    const-string v7, "GL_MAX_FRAMEBUFFER_LAYERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x69

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x9318

    const-string v7, "GL_MAX_FRAMEBUFFER_SAMPLES"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x6a

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x9315

    const-string v7, "GL_MAX_FRAMEBUFFER_WIDTH"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x6b

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x92dc

    const-string v7, "GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x6c

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x92d8

    const-string v7, "GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x6d

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x92d1

    const-string v7, "GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x6e

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x92d7

    const-string v7, "GL_MAX_COMBINED_ATOMIC_COUNTERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x6f

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x92d0

    const-string v7, "GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x70

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x92d6

    const-string v7, "GL_MAX_FRAGMENT_ATOMIC_COUNTERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x71

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x92cc

    const-string v7, "GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x72

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x92d2

    const-string v7, "GL_MAX_VERTEX_ATOMIC_COUNTERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x73

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8f38

    const-string v7, "GL_MAX_IMAGE_UNITS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x74

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x906d

    const-string v7, "GL_MAX_IMAGE_SAMPLES"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x75

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8e80

    const-string v7, "GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x76

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90cf

    const-string v7, "GL_MAX_COMBINED_IMAGE_UNIFORMS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x77

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90ce

    const-string v7, "GL_MAX_FRAGMENT_IMAGE_UNIFORMS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x78

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90ca

    const-string v7, "GL_MAX_VERTEX_IMAGE_UNIFORMS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x79

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8f39

    const-string v7, "GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x7a

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x82f9

    const-string v7, "GL_MAX_CULL_DISTANCES"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x7b

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x82fa

    const-string v7, "GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x7c

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90dc

    const-string v7, "GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x7d

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90db

    const-string v7, "GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x7e

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90da

    const-string v7, "GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x7f

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90de

    const-string v7, "GL_MAX_SHADER_STORAGE_BLOCK_SIZE"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x80

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90dd

    const-string v7, "GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x81

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90d6

    const-string v7, "GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x82

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8266

    const-string v7, "GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x83

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8264

    const-string v7, "GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x84

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8265

    const-string v7, "GL_MAX_COMPUTE_ATOMIC_COUNTERS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x85

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x91bd

    const-string v7, "GL_MAX_COMPUTE_IMAGE_UNIFORMS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x86

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8262

    const-string v7, "GL_MAX_COMPUTE_SHARED_MEMORY_SIZE"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x87

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x91bc

    const-string v7, "GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x88

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x91bb

    const-string v7, "GL_MAX_COMPUTE_UNIFORM_BLOCKS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x89

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x8263

    const-string v7, "GL_MAX_COMPUTE_UNIFORM_COMPONENTS"

    invoke-direct {v1, v3, v7, v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x8a

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x91be

    const-string v7, "GL_MAX_COMPUTE_WORK_GROUP_COUNT"

    invoke-direct {v1, v3, v7, v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x8b

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x90eb

    const-string v7, "GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS"

    invoke-direct {v1, v3, v7, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v3, 0x8c

    aput-object v1, v0, v3

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v3, 0x91bf

    const-string v7, "GL_MAX_COMPUTE_WORK_GROUP_SIZE"

    invoke-direct {v1, v3, v7, v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x825b

    const-string v3, "GL_MAX_VIEWPORTS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x90df

    const-string v3, "GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x919f

    const-string v3, "GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x90

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x90d8

    const-string v3, "GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x91

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x90d9

    const-string v3, "GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x92

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88b1

    const-string v3, "GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x93

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x880b

    const-string v3, "GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x94

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88ad

    const-string v3, "GL_MAX_PROGRAM_ATTRIBS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x95

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88b5

    const-string v3, "GL_MAX_PROGRAM_ENV_PARAMETERS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x96

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88a1

    const-string v3, "GL_MAX_PROGRAM_INSTRUCTIONS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x97

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88b4

    const-string v3, "GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x98

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88b3

    const-string v3, "GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x99

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x880e

    const-string v3, "GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88af

    const-string v3, "GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88a3

    const-string v3, "GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88ab

    const-string v3, "GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88a7

    const-string v3, "GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x8810

    const-string v3, "GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x880f

    const-string v3, "GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88a9

    const-string v3, "GL_MAX_PROGRAM_PARAMETERS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x88a5

    const-string v3, "GL_MAX_PROGRAM_TEMPORARIES_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x880d

    const-string v3, "GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x880c

    const-string v3, "GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x86a2

    const-string v3, "GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x862f

    const-string v3, "GL_MAX_PROGRAM_MATRICES_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x862e

    const-string v3, "GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x82e9

    const-string v3, "GL_NUM_SHADING_LANGUAGE_VERSIONS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x92cf

    const-string v3, "GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x92d5

    const-string v3, "GL_MAX_GEOMETRY_ATOMIC_COUNTERS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x92cd

    const-string v3, "GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xab

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x92d3

    const-string v3, "GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xac

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x92ce

    const-string v3, "GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xad

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x92d4

    const-string v3, "GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xae

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x82e5

    const-string v3, "GL_MAX_VERTEX_ATTRIB_STRIDE"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x90cd

    const-string v3, "GL_MAX_GEOMETRY_IMAGE_UNIFORMS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x90d7

    const-string v3, "GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x90cb

    const-string v3, "GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x90cc

    const-string v3, "GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x80b3

    const-string v3, "GL_MAX_COLOR_MATRIX_STACK_DEPTH"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x8ddd

    const-string v3, "GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x8dde

    const-string v3, "GL_MAX_VERTEX_VARYING_COMPONENTS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x9199

    const-string v3, "GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x919a

    const-string v3, "GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x9198

    const-string v3, "GL_MAX_SPARSE_TEXTURE_SIZE_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x9344

    const-string v3, "GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xba

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x91b0

    const-string v3, "GL_MAX_SHADER_COMPILER_THREADS_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x825c

    const-string v3, "GL_VIEWPORT_SUBPIXEL_BITS"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const v2, 0x9345

    const-string v3, "GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB"

    invoke-direct {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    sput-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->glCapabilitiesList:[Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->glCapabilitiesList:[Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->glCapabilitiesList:[Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    array-length v7, v3

    if-ge v2, v7, :cond_2

    aget-object v7, v3, v0

    aget-object v3, v3, v2

    iget v8, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->a:I

    iget v9, v3, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->a:I

    if-eq v8, v9, :cond_1

    iget-object v8, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflict in name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflict in id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Good"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->f:[B

    const/16 v0, 0x400

    new-array v0, v0, [I

    sput-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->g:[I

    :goto_2
    sget-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->g:[I

    array-length v1, v0

    if-ge v4, v1, :cond_4

    const/high16 v1, 0x100000

    invoke-static {v1}, Lcom/prineside/tdi2/utils/FastRandom;->getFairInt(I)I

    move-result v1

    aput v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-array v0, v6, [B

    sput-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->h:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x7t
        0x8t
        0x0t
        -0x4t
        0xft
        0x16t
        0x3t
        0x37t
        0x11t
        0x58t
        0x3ct
        0x18t
        -0xft
        0x7at
        -0xdt
        0xbt
        -0x11t
        -0x12t
        0xat
        0xet
        0x73t
        0x7at
        0xdt
        -0x37t
        -0x11t
        0x58t
        -0x3ct
        0x7ct
        0x73t
        0x7ft
        0x71t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/reflectasm/FieldAccess;Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->d(Lcom/prineside/reflectasm/FieldAccess;Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;)V

    return-void
.end method

.method public static c(I)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, p0, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/prineside/reflectasm/FieldAccess;Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v3, Lcom/prineside/tdi2/utils/PerformanceSurvey$SomeRequest;

    const-class v4, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;

    const-string v5, "error"

    const-string v6, "avg"

    const-string v7, "max"

    const-string v8, "min"

    const-string v9, "..."

    const-string v10, "PerformanceSurvey"

    const-wide/16 v11, 0x3e8

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    const-string v11, "Counting FPS..."

    sput-object v11, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    const-string v11, "counting FPS..."

    invoke-static {v10, v11}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v12, "fps"

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const/16 v13, 0x8

    if-ge v14, v13, :cond_0

    sget-object v13, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v13}, Lcom/badlogic/gdx/Graphics;->getFramesPerSecond()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    int-to-double v6, v13

    const-wide/high16 v19, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v6, v19

    add-double/2addr v11, v6

    :try_start_1
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    sget-object v6, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto :goto_0

    :cond_0
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    sget-object v6, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    sget-object v6, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v7, "avgFps"

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v7, "maxFps"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "Testing networking..."

    sput-object v6, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    const-string v6, "testing KryoNet..."

    invoke-static {v10, v6}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v7, "kryonet"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v6, 0x1

    :try_start_2
    new-instance v7, Lcom/esotericsoftware/kryonet/Server;

    const/16 v11, 0x200

    const/16 v12, 0x40

    invoke-direct {v7, v11, v12}, Lcom/esotericsoftware/kryonet/Server;-><init>(II)V

    invoke-virtual {v7}, Lcom/esotericsoftware/kryonet/Server;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    invoke-virtual {v7}, Lcom/esotericsoftware/kryonet/Server;->start()V

    const v11, 0xc671

    const v12, 0xc670

    invoke-virtual {v7, v12, v11}, Lcom/esotericsoftware/kryonet/Server;->bind(II)V

    new-array v11, v6, [Z

    new-array v14, v6, [Z

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v25

    new-array v15, v6, [J

    new-instance v13, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;

    move-object/from16 v19, v13

    move-object/from16 v20, v11

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-wide/from16 v23, v25

    invoke-direct/range {v19 .. v24}, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;-><init>([Z[Z[JJ)V

    invoke-virtual {v7, v13}, Lcom/esotericsoftware/kryonet/Server;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    new-instance v13, Lcom/esotericsoftware/kryonet/Client;

    invoke-direct {v13}, Lcom/esotericsoftware/kryonet/Client;-><init>()V

    invoke-virtual {v13}, Lcom/esotericsoftware/kryonet/Client;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    invoke-virtual {v13}, Lcom/esotericsoftware/kryonet/Client;->start()V

    const/16 v3, 0x1f4

    const-string v6, "127.0.0.1"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v20, v4

    const v4, 0xc671

    :try_start_3
    invoke-virtual {v13, v3, v6, v12, v4}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/lang/String;II)V

    new-instance v3, Lcom/prineside/tdi2/utils/PerformanceSurvey$SomeRequest;

    invoke-direct {v3}, Lcom/prineside/tdi2/utils/PerformanceSurvey$SomeRequest;-><init>()V

    const-string v4, "OK"

    iput-object v4, v3, Lcom/prineside/tdi2/utils/PerformanceSurvey$SomeRequest;->text:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/esotericsoftware/kryonet/Connection;->sendUDP(Ljava/lang/Object;)I

    :goto_1
    const/4 v3, 0x0

    aget-boolean v4, v14, v3

    if-nez v4, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v3

    const-wide/16 v21, 0x7d0

    add-long v21, v25, v21

    cmp-long v6, v3, v21

    if-lez v6, :cond_1

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v4, "timeout"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_2
    :goto_2
    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v4, "init"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v4, "requestReceived"

    const/4 v6, 0x0

    aget-boolean v11, v11, v6

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v4, "requestSuccess"

    aget-boolean v11, v14, v6

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v4, "delay"

    aget-wide v11, v15, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/esotericsoftware/kryonet/Server;->stop()V

    invoke-virtual {v13}, Lcom/esotericsoftware/kryonet/Client;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v20, v4

    :goto_3
    move-object v3, v0

    :try_start_4
    sget-object v4, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const-string v3, "Running benchmarks..."

    sput-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v4, "benchmarks"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    const-string v3, "Benchmarking field access..."

    sput-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v4, "fieldAccessBenchmark"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v3, 0x14

    const-wide/16 v6, -0x1

    const v4, 0x7a120

    const v11, 0xc350

    const-wide v21, 0x7fffffffffffffffL

    const-wide/16 v23, 0x12c

    const/4 v14, 0x5

    :try_start_5
    const-string v15, "intVal"

    invoke-virtual {v1, v15}, Lcom/prineside/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result v15

    const/4 v12, 0x0

    iput v12, v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v14, :cond_4

    :try_start_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ReflectASM benchmark: warmup #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v11, :cond_3

    invoke-static {v2, v1, v15}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->h(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Lcom/prineside/reflectasm/FieldAccess;I)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_3
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v14, 0x5

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v33, v5

    :goto_7
    move-object/from16 v5, v17

    move-object/from16 v4, v18

    goto/16 :goto_10

    :cond_4
    :try_start_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "after asm warmup "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-array v12, v3, [J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v3, :cond_8

    :try_start_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ReflectASM benchmark: test #"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v13, 0x1

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v30

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v4, :cond_6

    invoke-static {v2, v1, v15}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->h(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Lcom/prineside/reflectasm/FieldAccess;I)Z

    move-result v32

    if-nez v32, :cond_5

    const/4 v14, 0x1

    goto :goto_a

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_6
    const/4 v14, 0x0

    :goto_a
    if-eqz v14, :cond_7

    aput-wide v6, v12, v13

    goto :goto_b

    :cond_7
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v32

    sub-long v32, v32, v30

    aput-wide v32, v12, v13

    :goto_b
    const-wide/16 v13, 0x96

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v13, v11

    const v11, 0xc350

    goto :goto_8

    :cond_8
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "after asm "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v11, v5

    move-wide/from16 v6, v21

    const/4 v1, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/16 v13, 0x0

    :goto_c
    if-ge v1, v3, :cond_9

    move-wide/from16 v34, v4

    :try_start_a
    aget-wide v3, v12, v1

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v33, v11

    move-object v5, v12

    move-wide/from16 v11, v34

    :try_start_b
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    add-long/2addr v13, v3

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x14

    move-wide/from16 v36, v11

    move-object v12, v5

    move-wide/from16 v4, v36

    move-object/from16 v11, v33

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v33, v11

    :goto_d
    move-object v1, v0

    goto/16 :goto_7

    :cond_9
    move-object/from16 v33, v11

    move-wide v11, v4

    :try_start_c
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "asmField"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object/from16 v4, v18

    :try_start_d
    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const/16 v3, 0x14

    int-to-long v5, v3

    div-long/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v5, v17

    :try_start_e
    invoke-virtual {v1, v5, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_11

    :catch_5
    move-exception v0

    goto :goto_f

    :catch_6
    move-exception v0

    move-object/from16 v5, v17

    goto :goto_f

    :catch_7
    move-exception v0

    goto :goto_e

    :catch_8
    move-exception v0

    move-object/from16 v33, v5

    :goto_e
    move-object/from16 v5, v17

    move-object/from16 v4, v18

    :goto_f
    move-object v1, v0

    :goto_10
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    const-string v1, "intVal"

    move-object/from16 v3, v20

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v6, 0x0

    iput v6, v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_15
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const/4 v6, 0x0

    :goto_12
    const/4 v7, 0x5

    if-ge v6, v7, :cond_b

    :try_start_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reflection Field benchmark: warmup #"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    const/4 v7, 0x0

    :goto_13
    const v11, 0xc350

    if-ge v7, v11, :cond_a

    invoke-static {v2, v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->i(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Ljava/lang/reflect/Field;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_a
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_12

    :catch_9
    move-exception v0

    move-object v1, v0

    move-object v3, v5

    move-object v13, v9

    goto/16 :goto_2a

    :cond_b
    :try_start_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after reflection warmup "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x14

    new-array v7, v6, [J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_15
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v6, :cond_f

    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reflection Field benchmark: test #"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v13

    const/4 v6, 0x0

    :goto_15
    const v15, 0x7a120

    if-ge v6, v15, :cond_d

    invoke-static {v2, v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->i(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Ljava/lang/reflect/Field;)Z

    move-result v17

    if-nez v17, :cond_c

    const/4 v6, 0x1

    goto :goto_16

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_d
    const/4 v6, 0x0

    :goto_16
    if-eqz v6, :cond_e

    const-wide/16 v17, -0x1

    aput-wide v17, v7, v11

    goto :goto_17

    :cond_e
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v17

    sub-long v17, v17, v13

    aput-wide v17, v7, v11

    :goto_17
    const-wide/16 v13, 0x96

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move v11, v12

    const/16 v6, 0x14

    goto :goto_14

    :cond_f
    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after reflection "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-object v6, v9

    move-object/from16 v17, v10

    move-wide/from16 v13, v21

    const/4 v1, 0x0

    const-wide/high16 v9, -0x8000000000000000L

    const-wide/16 v11, 0x0

    :goto_18
    const/16 v15, 0x14

    if-ge v1, v15, :cond_10

    move-object/from16 v20, v3

    :try_start_14
    aget-wide v2, v7, v1

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    add-long/2addr v11, v2

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    goto :goto_18

    :catch_a
    move-exception v0

    move-object v1, v0

    move-object v3, v5

    :goto_19
    move-object v13, v6

    goto/16 :goto_2a

    :cond_10
    move-object/from16 v20, v3

    :try_start_15
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "reflectionField"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const/16 v2, 0x14

    int-to-long v9, v2

    div-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const-string v1, "getIntVal"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    move-object/from16 v11, v20

    invoke-virtual {v11, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "setIntVal"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v2

    invoke-virtual {v11, v3, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v11, p1

    iput v2, v11, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    const/4 v2, 0x0

    :goto_1a
    const/4 v13, 0x5

    if-ge v2, v13, :cond_12

    :try_start_16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reflection getter/setter benchmark: warmup #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    const/4 v13, 0x0

    :goto_1b
    const v14, 0xc350

    if-ge v13, v14, :cond_11

    invoke-static {v11, v1, v3}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->j(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    :cond_11
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_1a

    :cond_12
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "after getter/setter warmup "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v13, v17

    invoke-static {v13, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    invoke-static {v7, v14, v15}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    const/4 v2, 0x0

    :goto_1c
    const/16 v14, 0x14

    if-ge v2, v14, :cond_16

    :try_start_18
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reflection getter/setter benchmark: test #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v17

    const v12, 0x7a120

    const/4 v14, 0x0

    :goto_1d
    if-ge v14, v12, :cond_14

    move v12, v15

    invoke-static {v11, v1, v3}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->j(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v20

    if-nez v20, :cond_13

    const/4 v14, 0x1

    goto :goto_1e

    :cond_13
    add-int/lit8 v14, v14, 0x1

    move v15, v12

    const v12, 0x7a120

    goto :goto_1d

    :cond_14
    move v12, v15

    const/4 v14, 0x0

    :goto_1e
    if-eqz v14, :cond_15

    const-wide/16 v30, -0x1

    aput-wide v30, v7, v2

    goto :goto_1f

    :cond_15
    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v34

    sub-long v34, v34, v17

    aput-wide v34, v7, v2

    :goto_1f
    const-wide/16 v17, 0x96

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move v2, v12

    const/4 v12, 0x1

    goto :goto_1c

    :cond_16
    :try_start_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after getter/setter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_14
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    move-object/from16 v18, v6

    move-object/from16 v17, v13

    move-wide/from16 v14, v21

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x14

    const-wide/high16 v12, -0x8000000000000000L

    :goto_20
    if-ge v3, v6, :cond_17

    move-object/from16 v20, v5

    :try_start_1a
    aget-wide v5, v7, v3

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    add-long/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v20

    const/16 v6, 0x14

    goto :goto_20

    :catch_b
    move-exception v0

    move-object v1, v0

    move-object/from16 v13, v18

    move-object/from16 v3, v20

    goto/16 :goto_2a

    :cond_17
    move-object/from16 v20, v5

    :try_start_1b
    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v5, "getterSetter"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    div-long/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    move-object/from16 v2, v20

    :try_start_1c
    invoke-virtual {v3, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const/4 v3, 0x0

    iput v3, v11, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_12
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    const/4 v1, 0x0

    :goto_21
    const/4 v5, 0x5

    if-ge v1, v5, :cond_19

    :try_start_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Baseline benchmark: warmup #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    move-object/from16 v6, v18

    :try_start_1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    const/4 v5, 0x0

    const v12, 0xc350

    :goto_22
    if-ge v5, v12, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->g(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_18
    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    move-object/from16 v18, v6

    goto :goto_21

    :catch_c
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    goto/16 :goto_19

    :catch_d
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object/from16 v13, v18

    goto/16 :goto_2a

    :cond_19
    move-object/from16 v6, v18

    :try_start_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after baseline warmup "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v17

    invoke-static {v5, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    invoke-static {v7, v14, v15}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    const/4 v1, 0x0

    :goto_23
    const/16 v12, 0x14

    if-ge v1, v12, :cond_1d

    :try_start_20
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Baseline benchmark: test #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v16

    const v3, 0x7a120

    const/4 v12, 0x0

    :goto_24
    if-ge v12, v3, :cond_1b

    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->g(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;)Z

    move-result v20

    if-nez v20, :cond_1a

    const/4 v12, 0x1

    goto :goto_25

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_24

    :cond_1b
    const/4 v12, 0x0

    :goto_25
    if-eqz v12, :cond_1c

    const-wide/16 v27, -0x1

    aput-wide v27, v7, v1

    goto :goto_26

    :cond_1c
    const-wide/16 v27, -0x1

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v29

    sub-long v29, v29, v16

    aput-wide v29, v7, v1

    :goto_26
    const-wide/16 v16, 0x96

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    move v1, v13

    const/4 v3, 0x0

    goto :goto_23

    :cond_1d
    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after baseline "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    move-object v1, v6

    move-wide v11, v14

    move-wide/from16 v14, v21

    const/4 v3, 0x0

    const-wide/high16 v5, -0x8000000000000000L

    :goto_27
    const/16 v13, 0x14

    if-ge v3, v13, :cond_1e

    move-object v13, v1

    move-object/from16 v17, v2

    :try_start_22
    aget-wide v1, v7, v3

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    add-long/2addr v11, v1

    add-int/lit8 v3, v3, 0x1

    move-object v1, v13

    move-object/from16 v2, v17

    goto :goto_27

    :catch_e
    move-exception v0

    move-object v1, v0

    move-object/from16 v3, v17

    goto :goto_2a

    :cond_1e
    move-object v13, v1

    move-object/from16 v17, v2

    :try_start_23
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "baseline"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    div-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_10
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    move-object/from16 v3, v17

    :try_start_24
    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    move-object/from16 v6, v33

    goto :goto_2b

    :catch_f
    move-exception v0

    goto :goto_29

    :catch_10
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_29

    :catch_11
    move-exception v0

    move-object v3, v2

    goto :goto_28

    :catch_12
    move-exception v0

    move-object v3, v2

    move-object/from16 v13, v18

    goto :goto_29

    :catch_13
    move-exception v0

    move-object/from16 v13, v18

    move-object/from16 v3, v20

    goto :goto_29

    :catch_14
    move-exception v0

    move-object v3, v5

    :goto_28
    move-object v13, v6

    goto :goto_29

    :catch_15
    move-exception v0

    move-object v3, v5

    move-object v13, v9

    :goto_29
    move-object v1, v0

    :goto_2a
    :try_start_25
    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v33

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2b
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "binaryTree"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    const/4 v1, 0x0

    const/4 v2, 0x5

    :goto_2c
    if-ge v1, v2, :cond_1f

    :try_start_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binary tree benchmark: warmup #"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v7, v13

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v5}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->run(I)V

    const/16 v5, 0x8

    invoke-static {v5}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->run(I)V

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->run(I)V

    invoke-static/range {v23 .. v24}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    move-object v13, v7

    goto :goto_2c

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v11, v6

    goto/16 :goto_30

    :cond_1f
    move-object v7, v13

    const/16 v1, 0x14

    :try_start_27
    new-array v2, v1, [J
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v1, :cond_20

    :try_start_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Binary tree benchmark: test #"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v10

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->run(I)V

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->run(I)V

    const/16 v12, 0xa

    invoke-static {v12}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->run(I)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v12

    sub-long/2addr v12, v10

    aput-wide v12, v2, v5

    const-wide/16 v10, 0x96

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    move v5, v9

    const/16 v1, 0x14

    goto :goto_2d

    :cond_20
    move-wide/from16 v9, v21

    const/4 v1, 0x0

    const/16 v5, 0x14

    const-wide/16 v12, 0x0

    const-wide/high16 v14, -0x8000000000000000L

    :goto_2e
    if-ge v1, v5, :cond_21

    move-object v11, v6

    :try_start_29
    aget-wide v5, v2, v1

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    add-long/2addr v12, v5

    add-int/lit8 v1, v1, 0x1

    move-object v6, v11

    const/16 v5, 0x14

    goto :goto_2e

    :cond_21
    move-object v11, v6

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const/16 v2, 0x14

    int-to-long v4, v2

    div-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    goto :goto_31

    :catchall_1
    move-exception v0

    goto :goto_2f

    :catchall_2
    move-exception v0

    move-object v11, v6

    :goto_2f
    move-object v1, v0

    :goto_30
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_31
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    :try_start_2b
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "currentScreen"

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ScreenManager;->getCurrentScreen()Lcom/prineside/tdi2/Screen;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_16
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    :catch_16
    :try_start_2c
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-static {}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->f()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3

    goto :goto_32

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;->failed(Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method public static synthetic e()V
    .locals 10

    const-string v0, "Finished"

    sput-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->a:Z

    new-instance v1, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v2, "POST"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/Config;->PERFORMANCE_SURVEY_REPORT_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "app"

    const-string v4, "Infinitode 2"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "build"

    const-string v4, "184"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "user"

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_PERFORMANCE_SURVEY_SUBMITTED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v3, 0x1

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v6, v4, v7, v8}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->save()V

    sget-object v4, Lcom/prineside/tdi2/utils/PerformanceSurvey;->c:Ljava/io/StringWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v6, "PerformanceSurvey"

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/prineside/tdi2/utils/PerformanceSurvey;->e:Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v7, v4, v0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;->finished(Ljava/lang/String;Z)V

    const-string v0, "report"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "error"

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->e:Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->d:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;->failed(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->c:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v2}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sput-object v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->c:Ljava/io/StringWriter;

    if-nez v5, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$3;

    invoke-direct {v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$3;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->e:Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;->failed(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static execute(Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;)V
    .locals 24

    move-object/from16 v1, p0

    const-string v2, "getLoadAverage"

    const-class v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;

    const-string v4, "allocateInstance"

    const-string v5, "allocateMemory"

    const-string v6, "vendor"

    const-string v7, "renderer"

    const-string v8, "."

    const-string v9, "type"

    const-string v10, "status"

    const-string v11, "version"

    const-class v12, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;

    sget-boolean v13, Lcom/prineside/tdi2/utils/PerformanceSurvey;->a:Z

    if-eqz v13, :cond_0

    return-void

    :cond_0
    const/4 v13, 0x1

    sput-boolean v13, Lcom/prineside/tdi2/utils/PerformanceSurvey;->a:Z

    const-string v14, "Starting..."

    sput-object v14, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    sput-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->e:Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;

    const-string v14, "PerformanceSurvey"

    const-string v15, "starting..."

    invoke-static {v14, v15}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/badlogic/gdx/utils/Json;

    sget-object v13, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v15, v13}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    sput-object v15, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    sput-object v13, Lcom/prineside/tdi2/utils/PerformanceSurvey;->c:Ljava/io/StringWriter;

    sget-object v15, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v15, v13}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    :try_start_0
    sget-object v15, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    sget-object v15, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v13, "defaultCharset"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v13, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v15

    move-object/from16 v16, v10

    sget-object v10, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    move-object/from16 v17, v3

    const-string v3, "systemProperties"

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    :goto_0
    :try_start_2
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v18, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "native.encoding"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x15

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "java.vm.specification.name"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v10, "file.encoding"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0xe

    goto/16 :goto_2

    :sswitch_3
    const-string v10, "jdk.debug"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v10, "os.version"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0xd

    goto/16 :goto_2

    :sswitch_5
    const-string v10, "user.language"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x12

    goto/16 :goto_2

    :sswitch_6
    const-string v10, "sun.arch.data.model"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x11

    goto/16 :goto_2

    :sswitch_7
    const-string v10, "java.vm.name"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    goto/16 :goto_2

    :sswitch_8
    const-string v10, "java.vm.info"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x13

    goto/16 :goto_2

    :sswitch_9
    const-string v10, "java.runtime.name"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    goto/16 :goto_2

    :sswitch_a
    const-string v10, "java.version"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x14

    goto/16 :goto_2

    :sswitch_b
    const-string v10, "java.vm.compressedOopsMode"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x7

    goto/16 :goto_2

    :sswitch_c
    const-string v10, "java.runtime.version"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x8

    goto/16 :goto_2

    :sswitch_d
    const-string v10, "java.specification.version"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0xf

    goto/16 :goto_2

    :sswitch_e
    const-string v10, "java.vm.version"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto/16 :goto_2

    :sswitch_f
    const-string v10, "sun.cpu.isalist"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x18

    goto :goto_2

    :sswitch_10
    const-string v10, "java.vm.specification.version"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x10

    goto :goto_2

    :sswitch_11
    const-string v10, "os.name"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0xa

    goto :goto_2

    :sswitch_12
    const-string v10, "os.arch"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x9

    goto :goto_2

    :sswitch_13
    const-string v10, "sun.java.launcher"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_14
    const-string v10, "user.country"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_15
    const-string v10, "java.version.date"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x16

    goto :goto_2

    :sswitch_16
    const-string v10, "java.vm.vendor"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    goto :goto_2

    :sswitch_17
    const-string v10, "java.class.version"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0xc

    goto :goto_2

    :sswitch_18
    const-string v10, "sun.cpu.endian"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x17

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v10, -0x1

    :goto_2
    packed-switch v10, :pswitch_data_0

    move-object/from16 v18, v13

    goto :goto_3

    :pswitch_0
    invoke-virtual {v13, v3}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-nez v10, :cond_2

    goto/16 :goto_0

    :cond_2
    move-object/from16 v18, v13

    :try_start_3
    sget-object v13, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v3, v10}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    :catch_0
    :goto_3
    move-object/from16 v13, v18

    goto/16 :goto_0

    :catch_1
    :cond_3
    :try_start_4
    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v10, "filesystem"

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :try_start_5
    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;

    move-result-object v3

    array-length v10, v3

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v10, :cond_4

    aget-object v15, v3, v13

    sget-object v18, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    move-object/from16 v18, v3

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    move/from16 v20, v10

    const-string v10, "path"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    move-object/from16 v21, v2

    :try_start_6
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "total"

    invoke-virtual {v15}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "free"

    invoke-virtual {v15}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "usable"

    invoke-virtual {v15}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v18

    move/from16 v10, v20

    move-object/from16 v2, v21

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_4
    move-object/from16 v21, v2

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v21, v2

    :goto_5
    move-object v2, v0

    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "runtime"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "availableProcessors"

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "freeMemory"

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "maxMemory"

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "totalMemory"

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "javaHeap"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getJavaHeap()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "nativeHeap"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getNativeHeap()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "graphics"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "bufferFormat"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getBufferFormat()Lcom/badlogic/gdx/Graphics$BufferFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/Graphics$BufferFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "backBufferScale"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getBackBufferScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getType()Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getMajorVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getMinorVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getReleaseVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getRendererString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getVendorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "backBufferWidth"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "backBufferHeight"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "density"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getDensity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "maxTextureSize"

    invoke-static {}, Lcom/prineside/tdi2/Config;->getMaxTextureSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "safeInsets"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getSafeInsetTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getSafeInsetRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getSafeInsetBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getSafeInsetLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "displayModes"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_5

    aget-object v8, v1, v3

    sget-object v9, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    sget-object v9, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v10, "bpp"

    iget v13, v8, Lcom/badlogic/gdx/Graphics$DisplayMode;->bitsPerPixel:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v10, "rr"

    iget v13, v8, Lcom/badlogic/gdx/Graphics$DisplayMode;->refreshRate:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v10, "w"

    iget v13, v8, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v10, "h"

    iget v8, v8, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_5
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "monitors"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getMonitors()[Lcom/badlogic/gdx/Graphics$Monitor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_6

    aget-object v8, v1, v3

    sget-object v9, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    sget-object v9, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v10, "name"

    iget-object v13, v8, Lcom/badlogic/gdx/Graphics$Monitor;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v13}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v10, "vx"

    iget v13, v8, Lcom/badlogic/gdx/Graphics$Monitor;->virtualX:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v10, "vy"

    iget v8, v8, Lcom/badlogic/gdx/Graphics$Monitor;->virtualY:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_6
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "opengl"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "extensions"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    const/16 v2, 0x1f03

    :try_start_8
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "opengl extensions using 2.0 GL_EXTENSIONS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v8, :cond_8

    aget-object v10, v3, v9

    sget-object v13, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v8, "GL20.GL_EXTENSIONS string failed - zero length"

    invoke-direct {v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :catch_4
    move-exception v0

    move-object v3, v0

    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    :try_start_a
    const-string v3, "opengl extensions using 3.0 GL_EXTENSIONS:"

    invoke-static {v14, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x821d

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PerformanceSurvey;->c(I)I

    move-result v3

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v3, :cond_8

    invoke-interface {v1, v2, v8}, Lcom/prineside/tdi2/ActionResolver;->glGetStringi(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v1, v0

    :try_start_b
    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "GL_EXTENSIONS string can\'t be retrieved"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :try_start_c
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x1f00

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :catch_6
    :try_start_d
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x1f01

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :catch_7
    :try_start_e
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x1f02

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :catch_8
    :try_start_f
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "shadingLanguageVersion"

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v6, 0x8b8c

    invoke-interface {v3, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :catch_9
    :try_start_10
    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v2, "capabilities"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugMode()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    :try_start_11
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/DebugManager;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->disable()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->setDebugMode(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v2, v0

    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v2

    :goto_c
    if-eqz v2, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prev errors: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->resolveErrorNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v2

    goto :goto_c

    :cond_9
    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->glCapabilitiesList:[Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;

    array-length v3, v2

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v3, :cond_13

    aget-object v7, v2, v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :try_start_13
    iget v8, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->b:I

    if-nez v8, :cond_a

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v10, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->a:I

    invoke-interface {v9, v10, v8}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->get()I

    move-result v8

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v9, 0x0

    aput v8, v10, v9

    :goto_e
    const/4 v9, 0x4

    goto/16 :goto_10

    :cond_a
    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    const/4 v9, 0x2

    invoke-static {v9}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v10, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->a:I

    invoke-interface {v9, v10, v8}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->get()I

    move-result v9

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->get()I

    move-result v8

    const/4 v10, 0x2

    new-array v11, v10, [I

    const/4 v10, 0x0

    aput v9, v11, v10

    const/4 v9, 0x1

    aput v8, v11, v9

    move-object v10, v11

    goto :goto_e

    :cond_b
    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    const/4 v9, 0x3

    invoke-static {v9}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v10, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->a:I

    invoke-interface {v9, v10, v8}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->get()I

    move-result v9

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->get()I

    move-result v10

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->get()I

    move-result v8

    const/4 v11, 0x3

    new-array v13, v11, [I

    const/4 v11, 0x0

    aput v9, v13, v11

    const/4 v9, 0x1

    aput v10, v13, v9

    const/4 v9, 0x2

    aput v8, v13, v9
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    move-object v10, v13

    goto :goto_e

    :cond_c
    const/4 v9, 0x3

    if-ne v8, v9, :cond_d

    const/4 v8, 0x4

    :try_start_14
    invoke-static {v8}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v9

    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v10, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->a:I

    invoke-interface {v8, v10, v9}, Lcom/badlogic/gdx/graphics/GL20;->glGetBooleanv(ILjava/nio/Buffer;)V

    invoke-virtual {v9}, Ljava/nio/IntBuffer;->get()I

    move-result v8

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v9, 0x0

    aput v8, v10, v9
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_e

    :catch_b
    move-exception v0

    move-object v8, v0

    const/4 v9, 0x4

    :try_start_15
    invoke-static {v9}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v13, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->a:I

    invoke-interface {v11, v13, v10}, Lcom/badlogic/gdx/graphics/GL20;->glGetBooleanv(ILjava/nio/Buffer;)V

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    const/4 v11, 0x1

    new-array v13, v11, [I

    const/4 v11, 0x0

    aput v10, v13, v11
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    move-object v10, v13

    goto :goto_10

    :catch_c
    move-exception v0

    move-object v10, v0

    :try_start_16
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    :cond_d
    const/4 v9, 0x4

    :goto_f
    const/4 v10, 0x0

    :goto_10
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v8

    if-eqz v8, :cond_e

    :goto_11
    if-eqz v8, :cond_12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error for "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->resolveErrorNumber(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", returned: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v8}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v8

    goto :goto_11

    :cond_e
    if-eqz v10, :cond_12

    array-length v8, v10
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    const/4 v11, 0x1

    if-eq v8, v11, :cond_11

    const-string v11, "[1]"

    const-string v13, "[0]"

    const/4 v15, 0x2

    if-eq v8, v15, :cond_10

    const/4 v15, 0x3

    if-eq v8, v15, :cond_f

    goto/16 :goto_12

    :cond_f
    :try_start_17
    sget-object v8, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    aget v15, v10, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v9, v13}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aget v13, v10, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "[2]"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    aget v10, v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    :cond_10
    const/4 v9, 0x2

    sget-object v8, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    aget v15, v10, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v9, v13}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v8, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aget v10, v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    :cond_11
    sget-object v8, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    iget-object v7, v7, Lcom/prineside/tdi2/utils/PerformanceSurvey$GlCapability;->c:Ljava/lang/String;

    const/4 v9, 0x0

    aget v10, v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_12

    :catch_d
    move-exception v0

    move-object v7, v0

    :try_start_18
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    :cond_13
    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v2, Lcom/prineside/tdi2/utils/UnsafeFactory;->INSTANCE:Lsun/misc/Unsafe;

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v6, "hasUnsafe"

    if-eqz v2, :cond_14

    const/4 v7, 0x1

    goto :goto_13

    :cond_14
    const/4 v7, 0x0

    :goto_13
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_16

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v6, "unsafe"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    const-wide/16 v6, 0x40

    :try_start_19
    invoke-virtual {v2, v6, v7}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lsun/misc/Unsafe;->freeMemory(J)V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_14

    :catchall_0
    :try_start_1a
    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    :goto_14
    :try_start_1b
    invoke-virtual {v2, v12}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;

    sget-object v5, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v6, "allocateInstanceCheck"

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->a(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;)I

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_15

    :cond_15
    const/4 v3, 0x0

    :goto_15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto :goto_16

    :catchall_1
    :try_start_1c
    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    :goto_16
    const/4 v3, 0x3

    :try_start_1d
    new-array v4, v3, [D

    invoke-virtual {v2, v4, v3}, Lsun/misc/Unsafe;->getLoadAverage([DI)I

    move-result v2

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    move-object/from16 v6, v21

    :try_start_1e
    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v5, "getLoadAverageRet"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "getLoadAverageVal"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_17

    :catchall_2
    move-object/from16 v6, v21

    :catchall_3
    :try_start_1f
    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_17
    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    :cond_16
    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "byteBuddy"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :try_start_20
    new-instance v2, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v2}, Lnet/bytebuddy/ByteBuddy;-><init>()V

    invoke-virtual {v2, v12}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v2

    const-string v3, "bar"

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v2

    const/16 v3, 0x12d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/implementation/FixedValue;->value(Ljava/lang/Object;)Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;

    move-result-object v4

    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v4}, Lcom/prineside/tdi2/ActionResolver;->getByteBuddyClassLoadingStrategy()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    move-result-object v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    if-nez v4, :cond_17

    :try_start_21
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v2, v4}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    goto :goto_18

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v16

    goto :goto_1a

    :cond_17
    :try_start_22
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/DynamicType$Loaded;->getLoaded()Ljava/lang/Class;

    move-result-object v2

    :goto_18
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;

    invoke-virtual {v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->bar()I

    move-result v4

    if-ne v4, v3, :cond_18

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "success"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    move-object/from16 v4, v16

    :try_start_23
    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_18
    move-object/from16 v4, v16

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail notIntercepted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->bar()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    goto :goto_1b

    :catchall_5
    move-exception v0

    goto :goto_19

    :catchall_6
    move-exception v0

    move-object/from16 v4, v16

    :goto_19
    move-object v2, v0

    :goto_1a
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v3, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1b
    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v3, "reflectasm"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    new-instance v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;

    invoke-direct {v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;-><init>()V

    const/16 v3, 0x2329

    iput v3, v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    :try_start_25
    invoke-static {v12}, Lcom/prineside/reflectasm/FieldAccess;->get(Ljava/lang/Class;)Lcom/prineside/reflectasm/FieldAccess;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    :try_start_26
    const-string v4, "intVal"

    invoke-virtual {v3, v4}, Lcom/prineside/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x319d

    invoke-virtual {v3, v2, v4, v5}, Lcom/prineside/reflectasm/FieldAccess;->setInt(Ljava/lang/Object;II)V

    sget-object v4, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v5, "fieldAccess"

    const-string v6, "intVal"

    invoke-virtual {v3, v6}, Lcom/prineside/reflectasm/FieldAccess;->getIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v2, v6}, Lcom/prineside/reflectasm/FieldAccess;->getInt(Ljava/lang/Object;I)I

    move-result v6

    const/16 v7, 0x319d

    if-ne v6, v7, :cond_19

    const/4 v6, 0x1

    goto :goto_1c

    :cond_19
    const/4 v6, 0x0

    :goto_1c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12}, Lcom/prineside/reflectasm/MethodAccess;->get(Ljava/lang/Class;)Lcom/prineside/reflectasm/MethodAccess;

    move-result-object v4

    const-string v5, "foo"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/prineside/reflectasm/MethodAccess;->getIndex(Ljava/lang/String;[Ljava/lang/Class;)I

    move-result v5

    sget-object v6, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v7, "methodAccess"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/16 v10, 0x1f4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v4, v2, v5, v9}, Lcom/prineside/reflectasm/MethodAccess;->invoke(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x3391

    if-ne v4, v5, :cond_1a

    const/4 v13, 0x1

    goto :goto_1d

    :cond_1a
    const/4 v13, 0x0

    :goto_1d
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    goto :goto_1f

    :catchall_7
    move-exception v0

    move-object v4, v0

    goto :goto_1e

    :catchall_8
    move-exception v0

    move-object v4, v0

    const/4 v3, 0x0

    :goto_1e
    :try_start_27
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v5, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v6, "error"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1f
    sget-object v4, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v4, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    const-string v5, "platformSpecific"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    :try_start_28
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    sget-object v5, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-interface {v4, v5}, Lcom/prineside/tdi2/ActionResolver;->generateDeviceReport(Lcom/badlogic/gdx/utils/Json;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    goto :goto_20

    :catchall_9
    move-exception v0

    move-object v4, v0

    :try_start_29
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_20
    sget-object v4, Lcom/prineside/tdi2/utils/PerformanceSurvey;->b:Lcom/badlogic/gdx/utils/Json;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->setDebugMode(Z)V

    const-string v1, "Running async tests..."

    sput-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/prineside/tdi2/utils/b;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    move-object/from16 v5, p0

    :try_start_2a
    invoke-direct {v4, v3, v2, v5}, Lcom/prineside/tdi2/utils/b;-><init>(Lcom/prineside/reflectasm/FieldAccess;Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;)V

    const-string v2, "PerformanceSurvey benchmarks"

    invoke-direct {v1, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    goto :goto_22

    :catchall_a
    move-exception v0

    goto :goto_21

    :catchall_b
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_21

    :catchall_c
    move-exception v0

    move-object v5, v1

    :goto_21
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->d:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->c:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->d:Ljava/lang/String;

    invoke-interface {v5, v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;->failed(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/utils/PerformanceSurvey;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/prineside/tdi2/utils/PerformanceSurvey;->currentAction:Ljava/lang/String;

    :goto_22
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73d9347d -> :sswitch_18
        -0x7295a06a -> :sswitch_17
        -0x5be0346d -> :sswitch_16
        -0x4e8324b0 -> :sswitch_15
        -0x4e12a78d -> :sswitch_14
        -0x4bab5e36 -> :sswitch_13
        -0x4938f5e0 -> :sswitch_12
        -0x49334bab -> :sswitch_11
        -0x3a242abe -> :sswitch_10
        -0x2b54fd53 -> :sswitch_f
        -0x1fe74013 -> :sswitch_e
        -0x13da37df -> :sswitch_d
        0x14bea8f6 -> :sswitch_c
        0x1da33092 -> :sswitch_b
        0x2169950c -> :sswitch_a
        0x2afc932d -> :sswitch_9
        0x2b4da1b9 -> :sswitch_8
        0x2b4fb796 -> :sswitch_7
        0x36d550db -> :sswitch_6
        0x41bcae1b -> :sswitch_5
        0x460116ce -> :sswitch_4
        0x68b5c496 -> :sswitch_3
        0x6bd19585 -> :sswitch_2
        0x760baa61 -> :sswitch_1
        0x793bf94a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static f()V
    .locals 2

    sget-boolean v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/utils/c;

    invoke-direct {v1}, Lcom/prineside/tdi2/utils/c;-><init>()V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static g(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;)Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;->intVal:I

    return v1
.end method

.method public static h(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Lcom/prineside/reflectasm/FieldAccess;I)Z
    .locals 2

    invoke-virtual {p1, p0, p2}, Lcom/prineside/reflectasm/FieldAccess;->getInt(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, p0, p2, v0}, Lcom/prineside/reflectasm/FieldAccess;->setInt(Ljava/lang/Object;II)V

    invoke-virtual {p1, p0, p2}, Lcom/prineside/reflectasm/FieldAccess;->getInt(Ljava/lang/Object;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static i(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Ljava/lang/reflect/Field;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static j(Lcom/prineside/tdi2/utils/PerformanceSurvey$TestFieldAccessClass;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static runIfSurveysAccepting(Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->PERFORMANCE_SURVEY_STATUS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v2, Lcom/prineside/tdi2/utils/PerformanceSurvey$2;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$2;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    return-void
.end method

.method public static stop()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/prineside/tdi2/utils/PerformanceSurvey;->a:Z

    return-void
.end method
