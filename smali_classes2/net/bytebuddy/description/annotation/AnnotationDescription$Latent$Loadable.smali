.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;
.super Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Loadable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->a:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AbstractBase;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->a:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    return-object p1
.end method

.method public load()Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->annotationType:Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->a:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-static {v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->a(Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->of(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;->a:Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent;->prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Latent$Loadable;

    move-result-object p1

    return-object p1
.end method
