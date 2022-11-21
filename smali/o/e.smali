.class public final Lo/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:La/b;

.field public final c:La/a;

.field public final d:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(La/b;La/a;Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/e;->a:Ljava/lang/Object;

    iput-object p1, p0, Lo/e;->b:La/b;

    iput-object p2, p0, Lo/e;->c:La/a;

    iput-object p3, p0, Lo/e;->d:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lo/e;->c:La/a;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lo/e;->d:Landroid/content/ComponentName;

    return-object v0
.end method
