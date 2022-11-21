.class public Lg1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/o;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase;

.field public final b:Li1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkProgressUpdater"

    invoke-static {v0}, Lw0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg1/o;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Li1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/o;->a:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Lg1/o;->b:Li1/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/b;)Ll5/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Landroidx/work/b;",
            ")",
            "Ll5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lh1/d;->u()Lh1/d;

    move-result-object p1

    iget-object v0, p0, Lg1/o;->b:Li1/a;

    new-instance v1, Lg1/o$a;

    invoke-direct {v1, p0, p2, p3, p1}, Lg1/o$a;-><init>(Lg1/o;Ljava/util/UUID;Landroidx/work/b;Lh1/d;)V

    invoke-interface {v0, v1}, Li1/a;->b(Ljava/lang/Runnable;)V

    return-object p1
.end method
