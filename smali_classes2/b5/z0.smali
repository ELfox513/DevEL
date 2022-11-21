.class public final Lb5/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb5/w0;

.field public static volatile b:Lb5/w0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/y0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb5/y0;-><init>(Lb5/x0;)V

    sput-object v0, Lb5/z0;->a:Lb5/w0;

    sput-object v0, Lb5/z0;->b:Lb5/w0;

    return-void
.end method

.method public static a()Lb5/w0;
    .locals 1

    sget-object v0, Lb5/z0;->b:Lb5/w0;

    return-object v0
.end method
