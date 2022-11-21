.class public Lg1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/f;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Li1/a;

.field public final b:Le1/a;

.field public final c:Lf1/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Lw0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg1/n;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Le1/a;Li1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg1/n;->b:Le1/a;

    iput-object p3, p0, Lg1/n;->a:Li1/a;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->B()Lf1/q;

    move-result-object p1

    iput-object p1, p0, Lg1/n;->c:Lf1/q;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Lw0/e;)Ll5/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Lw0/e;",
            ")",
            "Ll5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lh1/d;->u()Lh1/d;

    move-result-object v6

    iget-object v7, p0, Lg1/n;->a:Li1/a;

    new-instance v8, Lg1/n$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lg1/n$a;-><init>(Lg1/n;Lh1/d;Ljava/util/UUID;Lw0/e;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Li1/a;->b(Ljava/lang/Runnable;)V

    return-object v6
.end method
