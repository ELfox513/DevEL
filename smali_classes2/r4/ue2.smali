.class public final Lr4/ue2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/ve2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ue2;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/ue2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/ve2;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/ve2;

    iget-object v1, p0, Lr4/ue2;->a:Ljava/lang/String;

    iget-object v2, p0, Lr4/ue2;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lr4/ve2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
