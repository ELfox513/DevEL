.class public interface abstract Lf0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lf0/b;->m:Z

    return-void
.end method
