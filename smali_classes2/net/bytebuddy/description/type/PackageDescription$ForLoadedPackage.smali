.class public Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;
.super Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/PackageDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedPackage"
.end annotation


# instance fields
.field private final aPackage:Ljava/lang/Package;


# direct methods
.method public constructor <init>(Ljava/lang/Package;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;->aPackage:Ljava/lang/Package;

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v1, p0, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;->aPackage:Ljava/lang/Package;

    invoke-virtual {v1}, Ljava/lang/Package;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;->aPackage:Ljava/lang/Package;

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
