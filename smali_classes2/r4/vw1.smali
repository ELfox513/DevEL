.class public final Lr4/vw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/bp2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/ww1;


# direct methods
.method public constructor <init>(Lr4/ww1;)V
    .locals 0

    iput-object p1, p0, Lr4/vw1;->a:Lr4/ww1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lr4/rz;->x4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lr4/ww1;->c()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lr4/vw1;->a:Lr4/ww1;

    invoke-static {v0}, Lr4/ww1;->b(Lr4/ww1;)Lr4/f02;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lr4/f02;->a(I)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lr4/bp2;

    sget-object v0, Lr4/rz;->x4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/vw1;->a:Lr4/ww1;

    invoke-static {v0}, Lr4/ww1;->b(Lr4/ww1;)Lr4/f02;

    move-result-object v0

    iget-object v1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v1, v1, Lr4/ap2;->b:Lr4/so2;

    iget v1, v1, Lr4/so2;->e:I

    invoke-virtual {v0, v1}, Lr4/f02;->a(I)V

    iget-object v0, p0, Lr4/vw1;->a:Lr4/ww1;

    invoke-static {v0}, Lr4/ww1;->b(Lr4/ww1;)Lr4/f02;

    move-result-object v0

    iget-object p1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object p1, p1, Lr4/ap2;->b:Lr4/so2;

    iget-wide v1, p1, Lr4/so2;->f:J

    invoke-virtual {v0, v1, v2}, Lr4/f02;->c(J)V

    :cond_0
    return-void
.end method
