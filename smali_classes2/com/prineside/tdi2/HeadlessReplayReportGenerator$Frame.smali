.class Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/HeadlessReplayReportGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Frame"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:I

.field public n:I

.field public final o:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->o:[I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->d:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->e:I

    return p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->f:I

    return p1
.end method

.method public static synthetic d(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->g:I

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->j:J

    return-wide p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->k:J

    return-wide p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->i:J

    return-wide p1
.end method

.method public static synthetic h(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->l:J

    return-wide p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->m:I

    return p1
.end method

.method public static synthetic j(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->n:I

    return p1
.end method

.method public static synthetic k(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;)[I
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->o:[I

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;Lcom/badlogic/gdx/utils/Json;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->q(Lcom/badlogic/gdx/utils/Json;)V

    return-void
.end method

.method public static synthetic m(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->h:I

    return p1
.end method

.method public static synthetic n(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->a:J

    return-wide p1
.end method

.method public static synthetic o(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->b:J

    return-wide p1
.end method

.method public static synthetic p(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J
    .locals 0

    iput-wide p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->c:J

    return-wide p1
.end method


# virtual methods
.method public final q(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->o:[I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
