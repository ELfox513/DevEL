.class public final synthetic Lr4/mz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m13;


# instance fields
.field public final a:Lr4/pz;

.field public final b:Lr4/jz;


# direct methods
.method public constructor <init>(Lr4/pz;Lr4/jz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/mz;->a:Lr4/pz;

    iput-object p2, p0, Lr4/mz;->b:Lr4/jz;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/mz;->a:Lr4/pz;

    iget-object v1, p0, Lr4/mz;->b:Lr4/jz;

    invoke-virtual {v0, v1}, Lr4/pz;->e(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
