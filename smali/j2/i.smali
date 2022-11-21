.class public Lj2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr2/a;

.field public final c:Lr2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr2/a;Lr2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lj2/i;->b:Lr2/a;

    iput-object p3, p0, Lj2/i;->c:Lr2/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lj2/h;
    .locals 3

    iget-object v0, p0, Lj2/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lj2/i;->b:Lr2/a;

    iget-object v2, p0, Lj2/i;->c:Lr2/a;

    invoke-static {v0, v1, v2, p1}, Lj2/h;->a(Landroid/content/Context;Lr2/a;Lr2/a;Ljava/lang/String;)Lj2/h;

    move-result-object p1

    return-object p1
.end method
