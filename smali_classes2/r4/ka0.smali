.class public final synthetic Lr4/ka0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xm0;


# instance fields
.field public final a:Lr4/vm0;


# direct methods
.method public constructor <init>(Lr4/vm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ka0;->a:Lr4/vm0;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lr4/ka0;->a:Lr4/vm0;

    new-instance v1, Lr4/s90;

    const-string v2, "Cannot get Javascript Engine"

    invoke-direct {v1, v2}, Lr4/s90;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
