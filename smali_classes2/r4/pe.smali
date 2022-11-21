.class public final Lr4/pe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/md;

.field public final b:J

.field public final c:J


# direct methods
.method public synthetic constructor <init>(Lr4/md;JJLr4/oe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pe;->a:Lr4/md;

    iput-wide p2, p0, Lr4/pe;->b:J

    iput-wide p4, p0, Lr4/pe;->c:J

    return-void
.end method

.method public static synthetic a(Lr4/pe;)Lr4/md;
    .locals 0

    iget-object p0, p0, Lr4/pe;->a:Lr4/md;

    return-object p0
.end method

.method public static synthetic b(Lr4/pe;)J
    .locals 2

    iget-wide v0, p0, Lr4/pe;->b:J

    return-wide v0
.end method

.method public static synthetic c(Lr4/pe;)J
    .locals 2

    iget-wide v0, p0, Lr4/pe;->c:J

    return-wide v0
.end method
