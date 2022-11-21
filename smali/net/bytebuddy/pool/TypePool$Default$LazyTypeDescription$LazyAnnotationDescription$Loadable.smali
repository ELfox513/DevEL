.class Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription$Loadable;
.super Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loadable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;",
        "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/pool/TypePool;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)V"
        }
    .end annotation

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;-><init>(Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;Lnet/bytebuddy/pool/TypePool$1;)V

    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription$Loadable;->annotationType:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/Class;Ljava/util/Map;Lnet/bytebuddy/pool/TypePool$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription$Loadable;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public load()Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription$Loadable;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription$Loadable;->annotationType:Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->values:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->of(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;
    .locals 0

    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription;->prepare(Ljava/lang/Class;)Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$LazyAnnotationDescription$Loadable;

    move-result-object p1

    return-object p1
.end method
