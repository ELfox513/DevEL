.class public final synthetic Lr4/sp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ek;


# instance fields
.field public final a:Lr4/xp0;

.field public final b:Lr4/ek;


# direct methods
.method public constructor <init>(Lr4/xp0;Lr4/ek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/sp0;->a:Lr4/xp0;

    iput-object p2, p0, Lr4/sp0;->b:Lr4/ek;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/fk;
    .locals 2

    iget-object v0, p0, Lr4/sp0;->a:Lr4/xp0;

    iget-object v1, p0, Lr4/sp0;->b:Lr4/ek;

    invoke-virtual {v0, v1}, Lr4/xp0;->f0(Lr4/ek;)Lr4/fk;

    move-result-object v0

    return-object v0
.end method
