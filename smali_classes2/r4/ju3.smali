.class public final synthetic Lr4/ju3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/wt3;


# instance fields
.field public final a:Lr4/g04;


# direct methods
.method public constructor <init>(Lr4/g04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ju3;->a:Lr4/g04;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/xt3;
    .locals 2

    iget-object v0, p0, Lr4/ju3;->a:Lr4/g04;

    new-instance v1, Lr4/tq3;

    invoke-direct {v1, v0}, Lr4/tq3;-><init>(Lr4/g04;)V

    return-object v1
.end method
