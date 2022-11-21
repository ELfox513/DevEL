.class public final enum Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;",
        ">;",
        "Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;
    .locals 1

    const-class v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;->$VALUES:[Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender$NoOp;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 0

    return-void
.end method
