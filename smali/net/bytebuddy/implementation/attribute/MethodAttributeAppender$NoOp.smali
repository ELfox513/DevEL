.class public final enum Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;",
        ">;",
        "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;",
        "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 0

    return-void
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
    .locals 0

    return-object p0
.end method
