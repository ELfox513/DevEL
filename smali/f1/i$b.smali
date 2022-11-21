.class public Lf1/i$b;
.super Ln0/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/i;-><init>(Ln0/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lf1/i;


# direct methods
.method public constructor <init>(Lf1/i;Ln0/e;)V
    .locals 0

    iput-object p1, p0, Lf1/i$b;->d:Lf1/i;

    invoke-direct {p0, p2}, Ln0/l;-><init>(Ln0/e;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object v0
.end method
