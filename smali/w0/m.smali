.class public interface abstract Lw0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/m$b;
    }
.end annotation


# static fields
.field public static final a:Lw0/m$b$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field

.field public static final b:Lw0/m$b$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw0/m$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw0/m$b$c;-><init>(Lw0/m$a;)V

    sput-object v0, Lw0/m;->a:Lw0/m$b$c;

    new-instance v0, Lw0/m$b$b;

    invoke-direct {v0, v1}, Lw0/m$b$b;-><init>(Lw0/m$a;)V

    sput-object v0, Lw0/m;->b:Lw0/m$b$b;

    return-void
.end method
