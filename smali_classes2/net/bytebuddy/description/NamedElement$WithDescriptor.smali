.class public interface abstract Lnet/bytebuddy/description/NamedElement$WithDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/NamedElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WithDescriptor"
.end annotation


# static fields
.field public static final NON_GENERIC_SIGNATURE:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getDescriptor()Ljava/lang/String;
.end method

.method public abstract getGenericSignature()Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method
