.class public final Lr4/pq2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/oq2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/pq2;->a:Lr4/oq2;

    return-void
.end method


# virtual methods
.method public final a(Lr4/oq2;)V
    .locals 0

    iput-object p1, p0, Lr4/pq2;->a:Lr4/oq2;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/pq2;->a:Lr4/oq2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lr4/oq2;->zza()V

    :cond_0
    return-void
.end method
