.class public final Lr4/hw3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lr4/jw3;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lr4/jw3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hw3;->a:Landroid/os/Handler;

    iput-object p2, p0, Lr4/hw3;->b:Lr4/jw3;

    return-void
.end method

.method public static synthetic a(Lr4/hw3;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lr4/hw3;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic b(Lr4/hw3;)Lr4/jw3;
    .locals 0

    iget-object p0, p0, Lr4/hw3;->b:Lr4/jw3;

    return-object p0
.end method

.method public static synthetic c(Lr4/hw3;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/hw3;->c:Z

    return p0
.end method


# virtual methods
.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/hw3;->c:Z

    return-void
.end method
