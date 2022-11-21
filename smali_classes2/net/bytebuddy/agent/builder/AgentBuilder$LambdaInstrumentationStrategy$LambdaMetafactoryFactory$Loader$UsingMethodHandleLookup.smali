.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UsingMethodHandleLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory$Loader$UsingMethodHandleLookup;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 26

    move-object/from16 v6, p1

    const/16 v7, 0x19

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v9, 0x4

    invoke-virtual {v6, v7, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "revealDirect"

    const-string v4, "(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v10, 0x3a

    const/16 v11, 0xa

    invoke-virtual {v6, v10, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v6, v7, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb9

    const-string v2, "java/lang/invoke/MethodHandleInfo"

    const-string v3, "getModifiers"

    const-string v4, "()I"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb8

    const-string v2, "java/lang/reflect/Modifier"

    const-string v3, "isProtected"

    const-string v4, "(I)Z"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v12, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v12}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v13, 0x99

    invoke-virtual {v6, v13, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    invoke-virtual {v6, v7, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "lookupClass"

    const-string v4, "()Ljava/lang/Class;"

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v7, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb9

    const-string v2, "java/lang/invoke/MethodHandleInfo"

    const-string v3, "getDeclaringClass"

    const-string v4, "()Ljava/lang/Class;"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb8

    const-string v2, "sun/invoke/util/VerifyAccess"

    const-string v3, "isSamePackage"

    const-string v4, "(Ljava/lang/Class;Ljava/lang/Class;)Z"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v14, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v14}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    invoke-virtual {v6, v13, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    invoke-virtual {v6, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/16 v12, 0xb

    new-array v3, v12, [Ljava/lang/Object;

    const-string v15, "java/lang/invoke/MethodHandles$Lookup"

    aput-object v15, v3, v8

    const/4 v5, 0x1

    const-string v16, "java/lang/String"

    aput-object v16, v3, v5

    const/4 v0, 0x2

    const-string v17, "java/lang/invoke/MethodType"

    aput-object v17, v3, v0

    const/4 v4, 0x3

    aput-object v17, v3, v4

    const-string v0, "java/lang/invoke/MethodHandle"

    aput-object v0, v3, v9

    const/4 v2, 0x5

    aput-object v17, v3, v2

    sget-object v18, Lnet/bytebuddy/jar/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    const/4 v0, 0x6

    aput-object v18, v3, v0

    const/4 v1, 0x7

    const-string v19, "java/util/List"

    aput-object v19, v3, v1

    const/16 v0, 0x8

    aput-object v19, v3, v0

    const-string v0, "[B"

    const/16 v10, 0x9

    aput-object v0, v3, v10

    const-string v0, "java/lang/invoke/MethodHandleInfo"

    aput-object v0, v3, v11

    new-array v0, v8, [Ljava/lang/Object;

    const/16 v20, 0x0

    const/16 v21, 0xb

    const/16 v22, 0x0

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    const/4 v10, 0x7

    move/from16 v1, v20

    move/from16 v2, v21

    const/4 v13, 0x3

    move/from16 v4, v22

    const/4 v12, 0x1

    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb9

    const-string v2, "java/lang/invoke/MethodHandleInfo"

    const-string v3, "getReferenceKind"

    const-string v4, "()I"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x10

    invoke-virtual {v6, v0, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    new-instance v5, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v5}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0xa0

    invoke-virtual {v6, v0, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object v10, v5

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    new-instance v14, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v14}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0xa7

    invoke-virtual {v6, v0, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v18, v5, v8

    const/4 v1, 0x4

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    const/16 v0, 0x36

    const/16 v1, 0xb

    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x15

    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    new-instance v10, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v10}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0x99

    invoke-virtual {v6, v0, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    invoke-virtual {v6, v7, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x9

    invoke-virtual {v6, v7, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v6, v7, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v14, 0x5

    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xbd

    const-string v5, "java/lang/invoke/MethodHandles$Lookup$ClassOption"

    invoke-virtual {v6, v0, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v4, 0x59

    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v6, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0xb2

    const-string v0, "NESTMATE"

    const-string v2, "Ljava/lang/invoke/MethodHandles$Lookup$ClassOption;"

    invoke-virtual {v6, v3, v5, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x53

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v6, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "STRONG"

    invoke-virtual {v6, v3, v5, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v20, 0xb6

    const-string v21, "java/lang/invoke/MethodHandles$Lookup"

    const-string v23, "defineHiddenClassWithClassData"

    const-string v24, "([BLjava/lang/Object;Z[Ljava/lang/invoke/MethodHandles$Lookup$ClassOption;)Ljava/lang/invoke/MethodHandles$Lookup;"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    const/16 v11, 0x53

    move/from16 v1, v20

    move-object v11, v2

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    const/16 v13, 0x59

    move-object/from16 v4, v24

    move-object v13, v5

    move/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v5, 0xc

    const/16 v0, 0x3a

    invoke-virtual {v6, v0, v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    new-instance v4, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    const/16 v0, 0xa7

    invoke-virtual {v6, v0, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    invoke-virtual {v6, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v18, v3, v8

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object v12, v4

    move v4, v10

    const/16 v10, 0xc

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x9

    invoke-virtual {v6, v7, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v6, v14}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xbd

    invoke-virtual {v6, v0, v13}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x59

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v1, "NESTMATE"

    const/16 v2, 0xb2

    invoke-virtual {v6, v2, v13, v1, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x53

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v6, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v6, v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "STRONG"

    invoke-virtual {v6, v2, v13, v0, v11}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "defineHiddenClass"

    const-string v4, "([BZ[Ljava/lang/invoke/MethodHandles$Lookup$ClassOption;)Ljava/lang/invoke/MethodHandles$Lookup;"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x3a

    invoke-virtual {v6, v0, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    invoke-virtual {v6, v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v15, v3, v8

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string v2, "java/lang/invoke/MethodHandles$Lookup"

    const-string v3, "lookupClass"

    const-string v4, "()Ljava/lang/Class;"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x3a

    const/16 v1, 0xa

    invoke-virtual {v6, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v15, v3, v8

    const/4 v0, 0x1

    aput-object v16, v3, v0

    const/4 v0, 0x2

    aput-object v17, v3, v0

    const/4 v0, 0x3

    aput-object v17, v3, v0

    const-string v0, "java/lang/invoke/MethodHandle"

    aput-object v0, v3, v9

    aput-object v17, v3, v14

    const/4 v0, 0x6

    aput-object v18, v3, v0

    const/4 v0, 0x7

    aput-object v19, v3, v0

    const/16 v0, 0x8

    aput-object v19, v3, v0

    const-string v0, "java/lang/Class"

    const/16 v1, 0x9

    aput-object v0, v3, v1

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public getLocalVariableLength()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public getStackSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
