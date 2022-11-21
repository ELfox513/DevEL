.class public Lnet/bytebuddy/description/type/PackageDescription$Simple;
.super Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/PackageDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/PackageDescription$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/PackageDescription$Simple;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/PackageDescription$Simple;->name:Ljava/lang/String;

    return-object v0
.end method
