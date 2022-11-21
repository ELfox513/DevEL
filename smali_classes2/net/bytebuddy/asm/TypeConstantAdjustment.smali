.class public final enum Lnet/bytebuddy/asm/TypeConstantAdjustment;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/TypeConstantAdjustment$TypeConstantDissolvingClassVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/TypeConstantAdjustment;",
        ">;",
        "Lnet/bytebuddy/asm/AsmVisitorWrapper;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/TypeConstantAdjustment;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/TypeConstantAdjustment;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/TypeConstantAdjustment;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/TypeConstantAdjustment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/TypeConstantAdjustment;->INSTANCE:Lnet/bytebuddy/asm/TypeConstantAdjustment;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/TypeConstantAdjustment;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/asm/TypeConstantAdjustment;->$VALUES:[Lnet/bytebuddy/asm/TypeConstantAdjustment;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/TypeConstantAdjustment;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/TypeConstantAdjustment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/TypeConstantAdjustment;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/TypeConstantAdjustment;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/TypeConstantAdjustment;->$VALUES:[Lnet/bytebuddy/asm/TypeConstantAdjustment;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/TypeConstantAdjustment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/TypeConstantAdjustment;

    return-object v0
.end method


# virtual methods
.method public mergeReader(I)I
    .locals 0

    return p1
.end method

.method public mergeWriter(I)I
    .locals 0

    return p1
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;II)",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;"
        }
    .end annotation

    new-instance p1, Lnet/bytebuddy/asm/TypeConstantAdjustment$TypeConstantDissolvingClassVisitor;

    invoke-direct {p1, p2}, Lnet/bytebuddy/asm/TypeConstantAdjustment$TypeConstantDissolvingClassVisitor;-><init>(Lnet/bytebuddy/jar/asm/ClassVisitor;)V

    return-object p1
.end method
