.class public final synthetic Lr4/qz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m13;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qz;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/qz;->a:Landroid/content/Context;

    sget-object v1, Lr4/rz;->a:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
